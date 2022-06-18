// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalogue.dart';
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
    loadData() ; 
  }
  loadData() async {
   var catalogJson  = await rootBundle.loadString("assets/files/catalog.json") ; 
   print(catalogJson) ; 
  }


  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate( 20 , (index) => CatalogModel.items[0]) ; 

    return Scaffold(
      appBar: AppBar(
     
   
        title: Center(child: Text("Catalog App" , 
        )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount:CatalogModel.items.length,
          itemBuilder: (context , index)
          {
            return Itemwidget(
              item: CatalogModel.items[index] ,
               );
          }
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
