import 'package:flutter/material.dart';

import '../widgets/filled_card.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        body: Column(
          children: const <Widget>[
            Spacer(),
            FilledCardWidget(textHeader: 'Finance'),
            Spacer(),
            FilledCardWidget(textHeader: 'AS'),
            Spacer(),
            FilledCardWidget(textHeader: 'SSSSS'),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
