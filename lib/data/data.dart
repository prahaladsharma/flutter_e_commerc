

import '../model/categorie_model.dart';
import '../model/product_model.dart';
import '../model/trending_productmodel.dart';

List<TrendingProductModel> getTrendingProducts() {
  List<TrendingProductModel> trendingProducts = <TrendingProductModel>[];
  TrendingProductModel productModel = new TrendingProductModel();

  productModel.storename = "Store Name";
  productModel.productName = "Product";
  productModel.noOfRating = 1;
  productModel.rating = 4;
  productModel.priceInDollars = 75;
  trendingProducts.add(productModel);
  productModel = new TrendingProductModel();

  productModel.storename = "Store Name";
  productModel.productName = "Product";
  productModel.noOfRating = 3;
  productModel.rating = 4;
  productModel.priceInDollars = 30;
  trendingProducts.add(productModel);
  productModel = new TrendingProductModel();

  productModel.storename = "Store Name";
  productModel.productName = "Product";
  productModel.noOfRating = 3;
  productModel.rating = 4;
  productModel.priceInDollars = 30;
  trendingProducts.add(productModel);
  productModel = new TrendingProductModel();

  productModel.storename = "Store Name";
  productModel.productName = "Product";
  productModel.noOfRating = 301;
  productModel.rating = 4;
  productModel.priceInDollars = 30;
  trendingProducts.add(productModel);
  productModel = new TrendingProductModel();

  return trendingProducts;
}
List<ProductModel> getProducts(){
  List<ProductModel> products = [];
  ProductModel productModel = new ProductModel();

  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();

  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();

  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();

  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();

  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();

  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 57;
  products.add(productModel);
  productModel = new ProductModel();
  return products;
}
List<CategorieModel> getCategories(){
  List<CategorieModel> categories = [];
  CategorieModel categorieModel = new CategorieModel();

  categorieModel.categorieName = "Regular Gift";
  categorieModel.color1 = "0xff8EA2FF";
  categorieModel.color2 = "0xff557AC7";
  categorieModel.imgAssetPath = "assets/categorie.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  categorieModel.categorieName = "Box Gift";
  categorieModel.color1 = "0xff50F9B4";
  categorieModel.color2 = "0xff38CAE9";
  categorieModel.imgAssetPath = "assets/boxgift.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  categorieModel.categorieName = "Chocolate";
  categorieModel.color1 = "0xffFFB397";
  categorieModel.color2 = "0xffF46AA0";
  categorieModel.imgAssetPath = "assets/choclate.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  categorieModel.categorieName = "Gift with card";
  categorieModel.color1 = "0xff8EA2FF";
  categorieModel.color2 = "0xff557AC7";
  categorieModel.imgAssetPath = "assets/categorie.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  categorieModel.categorieName = "Regular Gift";
  categorieModel.color1 = "0xff8EA2FF";
  categorieModel.color2 = "0xff557AC7";
  categorieModel.imgAssetPath = "assets/categorie.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  return categories;
}