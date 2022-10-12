class ProductModel {
  int priceInDollars;
  String productName;
  int rating;
  String imgUrl;
  int? noOfrating;

  ProductModel(
      { required this.priceInDollars,
        required this.productName,
        required this.rating,
        required this.imgUrl,
        this.noOfrating });

}