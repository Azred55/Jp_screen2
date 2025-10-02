class Items {
  final String name;
  final String description;
  final String price;
  final String imagePath;
  final String likes;

  Items(this.name, this.description, this.price, this.imagePath, this.likes);

  static final List<Items> itemsData = [
    Items(
      "Mogli's Cup",
      "Strawberry ice cream",
      "₳ 8.99",
      "assets/cat.png",
      "❤️200",
    ),

    Items(
      "Balu's Cup",
      "Pistachio ice cream",
      "₳ 8.99",
      "assets/cream.png",
      "❤️165",
    ),

    Items(
      "Smiling David",
      "Vanilla Choc",
      "₳ 3.99",
      "assets/ice_cream.png",
      "❤️310",
    ),

    Items(
      "Kai in a Cone",
      "Crispy waffle cream",
      "₳ 3.99",
      "assets/ice.png",
      "❤️290",
    ),

    Items(
      "Chick'nCup",
      "Creamy caramel ice cream",
      "₳ 8.99",
      "assets/chick3D.png",
      "❤️571",
    ),

    Items(
      "Angi's Yummy Burger",
      "Delish vegan burger",
      "₳ 13.99",
      "assets/Burger_3D.png",
      "❤️189",
    ),
  ];
}
