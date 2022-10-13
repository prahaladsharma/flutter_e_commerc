import 'package:e_commerce/data/data.dart';
import 'package:e_commerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

import '../model/product_model.dart';
import '../resources/colors.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<ProductModel> _productList = [];

  @override
  void initState() {
    super.initState();
    _productList = getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Best Selling',
                style: TextStyle(color: Colors.black87, fontSize: 22),
              ),
              SizedBox(
                width: 12,
              ),
              Text('This week'),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(left: 20),
          height: 150,
          child: ListView.builder(
              itemCount: _productList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return ProductTile(
                    priceInDollars: _productList[index].priceInDollars,
                    productName: _productList[index].productName,
                    rating: _productList[index].rating,
                    imgUrl: _productList[index].imgUrl,
                    noOfRating: _productList[index].noOfRating
                );
              }),
        )
      ],
    );
  }
}
