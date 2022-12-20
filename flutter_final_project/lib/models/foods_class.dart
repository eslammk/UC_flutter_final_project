class Food {
  String name;
  String image;

  Food({required this.name, required this.image});

  static List<Food> foods = [
    Food(name: " Meat ", image: "assets/images/meat.jpg"),
    Food(name: " Chicken ", image: "assets/images/chicken.jpg"),
    Food(name: " Baby milk ", image: "assets/images/babymilk.jpg"),
    Food(name: " Orange juice ", image: "assets/images/juice.jpg"),
    Food(name: " Rize ", image: "assets/images/rize.jpg"),
    Food(name: " Oil ", image: "assets/images/oil.jpg"),
    Food(name: " Olive oil ", image: "assets/images/oliveoil.jpg"),
    Food(name: " Milk ", image: "assets/images/milk.jpg"),
    Food(name: " Cut green beans ", image: "assets/images/beans.jpg"),
    Food(name: " Kiri cheese ", image: "assets/images/kiri.jpg"),
    Food(name: " Butter ", image: "assets/images/butter.jpg"),
    Food(name: " Flour ", image: "assets/images/floor.jpg"),
  ];
}
