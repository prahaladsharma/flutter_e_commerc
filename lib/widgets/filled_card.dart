import 'package:flutter/material.dart';

import '../ui/finance.dart';

class FilledCardWidget extends StatelessWidget {
  final String textHeader;

  const FilledCardWidget({Key? key, required this.textHeader})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: InkWell(
          onTap: () {
            print("tapped");
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Finance())
            );
          },
          child: Card(
            elevation: 0,
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: const SizedBox(
              width: 300,
              height: 100,
              child: Center(
                child: Text('\${textHeader}'),
              ),
            ),
          ),
        ));
  }
}
