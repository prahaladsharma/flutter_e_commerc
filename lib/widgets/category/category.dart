import 'package:e_commerce/data/data.dart';
import 'package:flutter/material.dart';
import '../../model/categorie_model.dart';
import 'category_card.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<CategorieModel> _categorieList = [];

  @override
  void initState() {
    super.initState();
    _categorieList = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Text(
            "Top categories",
            style: TextStyle(color: Colors.black87, fontSize: 22),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 240,
          padding: EdgeInsets.only(left: 22),
          child: ListView.builder(
              itemCount: _categorieList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return CategoryCard(
                  categorieName: _categorieList[index].categorieName,
                  imgAssetPath: _categorieList[index].imgAssetPath,
                  color1:   _categorieList[index].color1,
                  color2:  _categorieList[index].color2
                );
              }),
        )
      ],
    );
  }
}
