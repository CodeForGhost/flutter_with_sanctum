class Product {
  final String productName;
  final String productSlug;
  final String productPrice;
  final String productDesc;

  Product({
    required this.productName,
    required this.productSlug,
    required this.productPrice,
    required this.productDesc,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        productName: json['productName'],
        productSlug: json['productSlug'],
        productPrice: json['productPrice'],
        productDesc: json['productDesc']);
  }
}
