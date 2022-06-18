class CatalogModel {
static final items = [
  Item(
      id: 1,
      name: "Iphone 12 pro max s ",
      desc : "A 13 bionic chip 6 gb RAM latest phone " , 
      color: "#33505a",
      price: 999,
      image:
              "https://i.postimg.cc/4yV55FnR/swappie-product-iphone-12-pro-max-gold-back.png" )
];


}


class Item {
  final num id;
  final String name;
  final String color;
  final num price;
  final String image;
  final String desc ; 

  Item({ required this.desc ,  required this.id, required this.name, required this.color,required this.price, required this.image});
}

