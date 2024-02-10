class Category {
  int id;
  String name;
  List<SubCategory> subCategory;

  Category({
    required this.id,
    required this.name,
    required this.subCategory,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        subCategory: List<SubCategory>.from(
            json["subCategory"].map((x) => SubCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "subCategory": List<dynamic>.from(subCategory.map((x) => x.toJson())),
      };
}

class SubCategory {
  int id;
  String name;
  String image;
  List<Product> products;

  SubCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.products,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  int id;
  String name;
  String image;
  int price;
  int quantity;
  double discountPercentage;
  bool status;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
    required this.discountPercentage,
    required this.status,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
        quantity: json["quantity"],
        discountPercentage: json["discountPercentage"]?.toDouble(),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "price": price,
        "quantity": quantity,
        "discountPercentage": discountPercentage,
        "status": status,
      };
}
