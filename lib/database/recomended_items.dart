class RecommendedItems {
  final String productId;
  final String productName;
  final String imageUrl;
  final double offerPercentage;
  final String offerDescription;
  final String productDescription;
  final String category;

  RecommendedItems({
    required this.category,
    required this.productId,
    required this.productName,
    required this.imageUrl,
    required this.offerPercentage,
    required this.offerDescription,
    required this.productDescription,
  });
}

final List<RecommendedItems> recommendedItems = [
  RecommendedItems(
    category: "cakes",
    productId: "C003",
    productName: "Red Velvet ",
    imageUrl:
        "https://www.recipetineats.com/tachyon/2016/06/Red-Velvet-Cake-with-Cream-Cheese-Frosting_landscape.jpg",
    offerPercentage: 20.0,
    offerDescription: "20% off on festive season orders!",
    productDescription: "Delicious red velvet cake with cream cheese frosting.",
  ),
  RecommendedItems(
    category: "Gifts",
    productId: "G001",
    productName: "Gift Cards",
    imageUrl:
        "https://images.pexels.com/photos/7309948/pexels-photo-7309948.jpeg",
    offerPercentage: 20.0,
    offerDescription: "20% off on festive season orders!",
    productDescription: "Delicious red velvet cake with cream cheese frosting.",
  ),
  RecommendedItems(
    category: "Pops",
    productId: "P001",
    productName: "Balloons",
    imageUrl:
        'https://m.media-amazon.com/images/I/61aTONifIzL._AC_UF1000,1000_QL80_.jpg',
    offerPercentage: 20.0,
    offerDescription: "20% off on festive season orders!",
    productDescription: "Delicious red velvet cake with cream cheese frosting.",
  ),
  RecommendedItems(
    category: "Cakes",
    productId: "C001",
    productName: "Vanilla ",
    imageUrl:
        "https://www.onceuponachef.com/images/2012/11/Vanilla-Birthday-Cake-18-760x937.jpg",
    offerPercentage: 20.0,
    offerDescription: "20% off on festive season orders!",
    productDescription: "Delicious red velvet cake with cream cheese frosting.",
  ),
];
