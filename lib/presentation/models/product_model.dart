
class Product {
  final int id, sellerId;
  final String title, description;
  final List<String> imagesUrl;
  final int price;
  final DateTime date;

  Product({required this.id, required this.sellerId, required this.imagesUrl, required this.title,  required this.description, required this.price, required this.date});
}