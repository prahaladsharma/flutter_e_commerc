import 'package:e_commerce/widgets/login/login_textfield.dart';
import 'package:flutter/material.dart';

import '../../ui/dashboard.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  void loginPage(context) {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      //Navigate to chatpage on successfull login
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    } else {
      print("Login not successsful");
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Let\'s sign you in!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                'Welcome back! \n you\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              Image.network(
                'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                height: 200,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    LoginTextField(
                      hintText: 'Enter your username',
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.length < 5) {
                          return 'Your username should be more than 5 characters!';
                        } else if (value != null && value.isEmpty) {
                          return 'Please type your username';
                        }
                        return null;
                      },
                      controller: userNameController,
                    ),
                    SizedBox(height: 24),
                    LoginTextField(
                        hasAsterisks: true,
                        controller: passwordController,
                        hintText: 'Enter your password')
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {
                    loginPage(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
