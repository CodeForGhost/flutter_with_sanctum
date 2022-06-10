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
        productName: json['name'],
        productSlug: json['slug'],
        productPrice: json['description'],
        productDesc: json['price']);
  }

  static List<Product> productsFromSnapshot(List snapshot) {
    return snapshot.map((e) {
      return Product.fromJson(e);
    }).toList();
  }
}
