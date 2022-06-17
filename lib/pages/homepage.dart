import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogue.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 final dummyList = List.generate( 50 , ((index) =>  CatalogModel.items[0] ) ) ; 
    return Scaffold(
      appBar: AppBar(
     
   
        title: Center(child: Text("Catalog App" , 
        )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context , index)
          {
            return Itemwidget(
              item: dummyList[index] ,
               );
          }
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
