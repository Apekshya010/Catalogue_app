class CatalogModel {
  static List<Item> products = [];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      image: map["image"],
    );
  }
  toMap() =>
      {"id": id, "name": name, "price": price, "desc": desc, "image": image};
}
