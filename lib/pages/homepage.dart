// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_1/models/catalogue.dart';
import 'package:flutter_application_1/widgets/myTheme.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate( 20 , (index) => CatalogModel.items[0]) ;

    return Scaffold(
      backgroundColor: myTheme.creamColor,
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  Expanded(child: CatalogList())
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            )),
      ),

      //

      drawer: MyDrawer(),
    );
  }
}

class catalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Catalog App",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: (myTheme.darkBluishcolor))),
        Text(
          "Trending Products",
          style: TextStyle(
              fontSize: 20,
              color: (myTheme.darkBluishcolor),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalogue: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalogue;
  const CatalogItem({
    Key? key,
    required this.catalogue,
  })  : assert(catalogue != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(8),
      child: Row(children: [
        CatalogImg(Img: catalogue.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center , 
          children: [
            Text(
              catalogue.name,
              style: TextStyle(    fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              catalogue.desc,
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ) , 
            ButtonBar(children: [
                 Text("\$${catalogue.price}".toString())  

            ],)
          ],
        ))
      ]),
    );
  }
}

class CatalogImg extends StatelessWidget {
  const CatalogImg({
    Key? key,
    required this.Img,
  }) : super(key: key);
  final String Img;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      height: 140,
      width: 140,
      child: Image.network(Img),
      decoration: BoxDecoration(
          color: myTheme.creamColor, borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(8),
    );
  }
}
