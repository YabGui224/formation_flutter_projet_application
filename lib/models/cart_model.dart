class CartModel {
  final String title;
  final String image;
  final String shortDescription;
  final int price;
  final int qty;

  CartModel({required this.title, required this.image, required this.shortDescription, required this.price,required this.qty});

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      title: (json['title'] ?? '') as String, 
      image: (json['image'] ?? '') as String, 
      shortDescription: (json['shortDescription'] ?? '') as String, 
      price: (json['price'] ?? 0) as int , 
      qty: (json['qty'] ?? 0) as int,
    );
  }
}

