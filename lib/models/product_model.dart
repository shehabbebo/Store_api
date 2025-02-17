class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModel rating;
  final String category;
  ProductModel(
      {required this.category,
      this.id,
      required this.description,
      required this.image,
      required this.price,
      required this.title,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        description: jsonData['description'],
        image: jsonData['image'],
        price: jsonData['price'],
        title: jsonData['title'],
        rating: RatingModel.fromJson(jsonData['rating']),
        category: '');
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(count: jsonData['rate'], rate: jsonData['count']);
  }
}
