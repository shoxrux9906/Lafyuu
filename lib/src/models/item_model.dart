class ItemModel {
  String image;
  String name;
  String ratingImage;
  String price;
  String oldPrice;
  String percent;
  int star;
  int cardCount;
  bool isFav;

  ItemModel({
    required this.image,
    required this.name,
    required this.ratingImage,
    required this.price,
    required this.oldPrice,
    required this.percent,
    required this.star,
    this.cardCount = 0,
    this.isFav = false,
  });
}
