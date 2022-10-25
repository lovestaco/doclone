import 'package:doclone/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/g-logo.png',
            height: 20,
          ),
          label: const Text(
            "Sign in with Google",
            style: TextStyle(color: lblackColor),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: lwhiteColor,
              minimumSize: const Size(
                150,
                50,
              )),
        ),
      ),
    );
  }
}
