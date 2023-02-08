class Item {
  final int id;
  final String name;
  final String description;
  final double prize;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.prize,
      required this.color,
      required this.image});
}

class CatalogModel {
  static final product = [
    Item(
        id: 1,
        name: "Flutter T-Shirt",
        description:
            "A comfortable and stylish T-Shirt featuring the Flutter logo.",
        prize: 19.99,
        color: 'Blue',
        image: "https://picsum.photos/id/103/2592/1936")
  ];
}
