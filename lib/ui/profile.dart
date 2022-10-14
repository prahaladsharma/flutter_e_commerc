import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff4C4DFCB),
      child: Center(
        child: Text(
          'Profile Screen Coming soon!!!',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 25,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
