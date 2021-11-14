class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "garden01",
      name: "Marigod",
      desc: "It is most popular flower",
      price: 500,
      color: "#033505a",
      image:
          "https://marvel-b1-cdn.bc0a.com/f00000000187147/cdn.shopify.com/s/files/1/2954/2248/products/Marigold-Ferrys-Best-Mix-Flower-Annual-Ferry-Morse_800x.jpg?v=1571775666")
];
