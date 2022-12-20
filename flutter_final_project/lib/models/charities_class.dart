class Charity {
  String name;
  String image;

  Charity({required this.name, required this.image});

  static List<Charity> Charities = [
    Charity(
        name: "Insan charity Association ", image: "assets/images/insan.jpg"),
    Charity(name: " Al-Najat charity ", image: "assets/images/alnajat.jpg"),
    Charity(name: " Al-Hedaya charity ", image: "assets/images/hedaya.jpg"),
    Charity(
        name: " Safa charitable society humanitarian ",
        image: "assets/images/safa.jpg"),
    Charity(
        name: " International Islamic charity organization ",
        image: "assets/images/islamic.jpg"),
    Charity(
        name: " Ayat charity Association ", image: "assets/images/ayat.jpg"),
    Charity(name: " Tarahum Association ", image: "assets/images/tarahum.jpg"),
    Charity(name: " Ataa Association ", image: "assets/images/ataa.jpg"),
    Charity(
        name: " Al-Tasamuh Association ", image: "assets/images/tasamuh.jpg"),
    Charity(name: " Al-Salam Association ", image: "assets/images/salam.jpg"),
  ];
}
