class TrendingProductModel {
  String productName;
  String storename;
  String imgUrl;
  int noOfRating;
  int priceInDollars;
  int rating;

  TrendingProductModel(
      {required this.productName,
      required this.storename,
      required this.imgUrl,
      required this.rating,
      required this.priceInDollars,
      required this.noOfRating});
}
