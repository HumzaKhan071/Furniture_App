class MyItemContainerModel {
  String title;
  String price;
  String image;
  MyItemContainerModel(
      {required this.title, required this.price, required this.image});
}

List<MyItemContainerModel> myItemContainerModel = [
  MyItemContainerModel(
      title: "Black Simple Lamp", price: "\$ 12.00", image: "assets/Lamp.png"),
  MyItemContainerModel(
      title: "Minimal Stand", price: "\$ 25.00", image: "assets/Stand.png"),
  MyItemContainerModel(
      title: "StandMinimal Stand",
      price: "\$ 20.00",
      image: "assets/Chair.png"),
  MyItemContainerModel(
      title: "Simple Desk", price: "\$ 50.00", image: "assets/Desk.png"),
];
