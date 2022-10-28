class MyCartModel {
  String image;
  String title;
  String subtitle;

  MyCartModel(
      {required this.image, required this.title, required this.subtitle});
}

List<MyCartModel> myCartModel = [
  MyCartModel(
      title: "Coffee Table", subtitle: "\$ 50.00", image: "assets/Table.png"),
  MyCartModel(
      title: "Coffee Chair", subtitle: "\$ 20.00", image: "assets/Chair.png"),
  MyCartModel(
      title: "Minimal Stand", subtitle: "\$ 25.00", image: "assets/Stand.png"),
];
