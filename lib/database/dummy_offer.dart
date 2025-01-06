class DummyOffer {
  final String productId;
  final String productName;
  final String imageUrl;
  final double offerPercentage;
  final String offerDescription;
  final String productDescription;
  final String category;

  DummyOffer({
    required this.category,
    required this.productId,
    required this.productName,
    required this.imageUrl,
    required this.offerPercentage,
    required this.offerDescription,
    required this.productDescription,
  });
}

final List<DummyOffer> dummyOffers = [
  DummyOffer(
    category: 'Cake',
    productId: "C001",
    productName: "Chocolate Fudge ",
    imageUrl:
        "https://hips.hearstapps.com/del.h-cdn.co/assets/17/16/2048x1152/hd-aspect-1492694005-108-sein-9781101967140-art-r1-1.jpg",
    offerPercentage: 10.0,
    offerDescription: "10% off for this weekend only!",
    productDescription: "Rich and moist chocolate cake with fudge icing.",
  ),
  DummyOffer(
    category: 'Cake',
    productId: "C002",
    productName: "Vanilla Sponge ",
    imageUrl:
        "https://www.recipetineats.com/tachyon/2017/09/Vanilla-Sponge-Cake-2.jpg",
    offerPercentage: 15.0,
    offerDescription: "15% off on your first order!",
    productDescription: "Classic vanilla sponge cake with creamy frosting.",
  ),
  DummyOffer(
    category: 'Cake',
    productId: "C003",
    productName: "Red Velvet ",
    imageUrl:
        "https://www.recipetineats.com/tachyon/2016/06/Red-Velvet-Cake-with-Cream-Cheese-Frosting_landscape.jpg",
    offerPercentage: 20.0,
    offerDescription: "20% off on festive season orders!",
    productDescription: "Delicious red velvet cake with cream cheese frosting.",
  ),
  DummyOffer(
    category: 'Cake',
    productId: "C004",
    productName: "Black Forest ",
    imageUrl:
        "https://mygerman.recipes/wp-content/uploads/2020/09/sm-Blackforest-Cake-2.jpg",
    offerPercentage: 12.0,
    offerDescription: "12% off on Black Forest cakes this month!",
    productDescription:
        "Layered chocolate cake with cherries and whipped cream.",
  ),
  DummyOffer(
    category: 'Cake',
    productId: "C005",
    productName: "Fruit Cake",
    imageUrl: "https://thecococompany.com/cdn/shop/files/FRESHFRUITCAKE.jpg",
    offerPercentage: 8.0,
    offerDescription: "8% off on pre-orders!",
    productDescription: "Healthy and tasty fruit cake with mixed dry fruits.",
  ),
];
