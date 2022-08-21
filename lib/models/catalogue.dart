class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final num id;
  final String name;
  final String color;
  final num price;
  final String image;
  final String desc;

  Item(
      {required this.desc,
      required this.id,
      required this.name,
      required this.color,
      required this.price,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      desc: map["desc"],
      name: map["name"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "color": color,
        "desc": desc,
        "image": image,
      };
}
