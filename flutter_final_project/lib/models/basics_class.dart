class Basic {
  String name;
  String image;

  Basic({required this.name, required this.image});

  static List<Basic> basics = [
    Basic(name: " Foods ", image: "assets/images/foooods.jpg"),
    Basic(name: " Clothes ", image: "assets/images/clotheeeees.jpg"),
    Basic(name: " School supplies ", image: "assets/images/supplies.jpg"),
    Basic(name: " Money ", image: "assets/images/moneyy.jpg"),
    // Basic(name: "  ", image: ""),
  ];
}
