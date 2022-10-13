import 'package:e_commerce/widgets/star_rating.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';

class ProductTile extends StatelessWidget {
  final int? priceInDollars;
  final String? productName;
  final int? rating;
  final String? imgUrl;
  final int? noOfRating;

  const ProductTile(
      {Key? key,
      this.priceInDollars,
      this.productName,
      this.rating,
      this.imgUrl,
      this.noOfRating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/productImage.png",
                  height: 112,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 25,
                  width: 45,
                  margin: EdgeInsets.only(left: 8, top: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: LinearGradient(colors: [
                        const Color(0xff8Ea2FF).withOpacity(0.5),
                        const Color(0xff557AC7).withOpacity(0.5)
                      ])),
                )
              ],
            ),
          ),
          Text(productName!),
          SizedBox(
            height: 8,
          ),
          Row(
            children: <Widget>[
              StarRating(rating: rating),
              SizedBox(
                width: 10,
              ),
              Text(
                "($noOfRating)",
                style: TextStyle(color: textGrey, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
