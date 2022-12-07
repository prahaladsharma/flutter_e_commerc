import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../globalconst/global_const.dart';
import '../model/add_data.dart';

class CardTop extends StatefulWidget {
  const CardTop({Key? key}) : super(key: key);

  @override
  State<CardTop> createState() => _CardTopState();
}

class _CardTopState extends State<CardTop> {
  var History;
  final box = Hive.box<AddData>("data");

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, value, child) {
          return Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: height / 56.27),
                    height: height / 3.2,
                    width: width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xFF035AA6),
                              Color(0xFF120136),
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(height / 42.2),
                          bottomRight: Radius.circular(height / 42.2),
                        )),
                  )
                ],
              ),
              Positioned(
                  left: height / 42.2 * 2.7,
                  top: height / 17.76 * 2.5,
                  child: Container(
                    height: height / 4.8,
                    width: width / 1.4,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF035AA6).withOpacity(0.5),
                            offset: Offset(0, 6),
                            blurRadius: 12,
                            spreadRadius: 6)
                      ],
                      gradient: LinearGradient(colors: [
                        Color(0xFF40BAD5),
                        Color(0xFF035AA6),
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(height / 56.27),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height / 84.4,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: height / 84.4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Balance",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: height / 42.2 / 1.3,
                                    color: Colors.white),
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height / 84.4,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: height / 84.4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: height / 84.4,
                                    backgroundColor: Color(0xFFFCBF1E),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                      size: height / 42.2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: height / 84.4,
                                  ),
                                  Text("Income",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: height / 42.2 / 1.2,
                                        color:
                                            Color.fromARGB(255, 216, 216, 216),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: height / 56.27,
                                    backgroundColor: Color(0xFFFCBF1E),
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: Colors.white,
                                      size: height / 42.2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: height / 42.2,
                                  ),
                                  Text("Expense",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: height / 42.2 / 1.2,
                                        color:
                                            Color.fromARGB(255, 216, 216, 216),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height/84.4 / 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "50000",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: height/42.2 / 1.2,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "40000",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height/42.2 / 1.2,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          );
        });
  }
}
