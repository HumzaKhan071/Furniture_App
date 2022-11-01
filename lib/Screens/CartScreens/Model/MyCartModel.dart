class MyCartModel {
  String image;
  String title;
  String price;

  MyCartModel({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<MyCartModel> myCartModel = [
  MyCartModel(
      title: "Coffee Table", price: "\$ 50.00", image: "assets/Table.png"),
  MyCartModel(
      title: "Coffee Chair", price: "\$ 20.00", image: "assets/Chair.png"),
  MyCartModel(
      title: "Minimal Stand", price: "\$ 25.00", image: "assets/Stand.png"),
];
