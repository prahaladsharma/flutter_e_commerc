import 'package:e_commerce/globalconst/global_const.dart';
import 'package:e_commerce/widgets/card_top.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import '../model/add_data.dart';

class Finance extends StatefulWidget {
  const Finance({Key? key}) : super(key: key);

  @override
  State<Finance> createState() => _FinanceState();
}

class _FinanceState extends State<Finance> {
  final box = Hive.box<AddData>("data");

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      child: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, value, child) {
          return CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: height / 2.75, child: CardTop()),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: height / 56.27),
                  child: Text(
                    "Your comming payments",
                    style: TextStyle(
                        color: Color(0xFF035AA6),
                        fontWeight: FontWeight.bold,
                        fontSize: height / 32.46),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: height/56.27,
              ),
            ),
          ]);
        },
      ),
    ));
  }
}
