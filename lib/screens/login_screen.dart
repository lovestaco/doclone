import 'package:doclone/colors.dart';
import 'package:doclone/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void signInWithGoogle(WidgetRef ref) {
    ref.read(authRepositoryProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authRepositoryProvider).signInWithGoogle();

    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => signInWithGoogle(ref),
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
