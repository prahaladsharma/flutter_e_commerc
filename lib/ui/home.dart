import 'package:flutter/material.dart';

import '../widgets/best_selling_product/product.dart';
import '../widgets/category/category.dart';
import '../widgets/search.dart';
import '../widgets/trending_product/trending.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //TODO: add screen here
            SizedBox(height: 50,),
            SearchBar(),
            SizedBox(height: 30,),
            Trending(),
            SizedBox(height: 30,),
            Product(),
            SizedBox(height: 30,),
            Category()
          ],
        ),
      ),
    );
  }
}
