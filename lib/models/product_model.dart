class ProductModel {
  final String title;
  final String image;
  final String shortDescription;
  final String largeDescription;
  final int price;
  final int minutes;
  final int calories;
  final double rating;
  final int qty;

  ProductModel({required this.title, required this.image, required this.shortDescription, required this.largeDescription, required this.price, required this.minutes, required this.calories, required this.rating, required this.qty});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: (json['title'] ?? '') as String, 
      image: (json['image'] ?? '') as String, 
      shortDescription: (json['shortDescription'] ?? '') as String, 
      largeDescription: (json['largeDescription'] ?? '') as String, 
      price: (json['price'] ?? 0) as int , 
      minutes: (json['minutes'] ?? 0) as int, 
      calories: (json['calories'] ?? 0) as int, 
      rating: (json['rating'] ?? 0) as double,
      qty: (json['qty'] ?? 0) as int,
    );
  }


}