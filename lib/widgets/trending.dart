import 'package:e_commerce/widgets/trending_card.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../model/trending_productmodel.dart';

class Trending extends StatefulWidget {
  Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  List<TrendingProductModel> trendingProducts = [];

  @override
  void initState() {
    super.initState();
    trendingProducts = getTrendingProducts();
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
                "Today Trending",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text("30 June"),
            ],
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          height: 150,
          child: ListView.builder(
              itemCount: trendingProducts.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return TrendingCard(
                  priceInDollars: trendingProducts[index].priceInDollars,
                  productName: trendingProducts[index].productName,
                  storeName: trendingProducts[index].storename,
                  imgUrl: trendingProducts[index].imgUrl,
                  noOfRating: trendingProducts[index].noOfRating,
                  rating: trendingProducts[index].rating
                );
              }),
        )
      ],
    );
  }
}
