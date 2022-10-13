import 'package:e_commerce/widgets/star_rating.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';

class TrendingCard extends StatelessWidget {
  final String? productName;
  final String? storeName;
  final String? imgUrl;
  final int? noOfRating;
  final int? priceInDollars;
  final int? rating;

  const TrendingCard(
      {Key? key,
      this.productName,
      this.storeName,
      this.imgUrl,
      this.noOfRating,
      this.priceInDollars,
      this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      margin: EdgeInsets.only(left: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 15.0,
            color: Colors.black87.withOpacity(0.05),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/image.png",
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 25,
                  width: 50,
                  margin: EdgeInsets.only(left: 5, top: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: LinearGradient(colors: [
                        const Color(0xff8EA2FF).withOpacity(0.5),
                        const Color(0xff557AC7).withOpacity(0.5)
                      ])),
                  child: Text(
                    "\$$priceInDollars",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  productName!,
                  style: TextStyle(color: textGrey),
                ),
                Text(
                  storeName!,
                  style: TextStyle(color: textGrey),
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  children: <Widget>[
                    StarRating(
                      rating: rating,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "($noOfRating)",
                      style: TextStyle(color: textGrey, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: LinearGradient(colors: [
                        const Color(0xff8EA2FF),
                        const Color(0xff557AC7)
                      ])),
                  child: Text(
                    "Add to cart",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
