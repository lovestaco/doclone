// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html';

import 'package:doclone/constants.dart';
import 'package:doclone/models/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

// final authRepositoryProvider = Provider(
//   (ref) => AuthRepository(
//     googleSignIn: GoogleSignIn(),
//   ),
// );

class AuthRepository {
  final GoogleSignIn _googleSignIn;

  final Client _client;
  AuthRepository({required GoogleSignIn googleSignIn, required Client client})
      : _googleSignIn = googleSignIn,
        _client = client;

  void signInWithGoogle() async {
    try {
      final user = await _googleSignIn.signIn();
      if (user != null) {
        final userAcc = UserModel(
            email: user.email,
            name: user.displayName!,
            profilePic: user.photoUrl!,
            uid: "",
            token: " token");
      }

     let res = await _client.post(Uri.parse('$host/api/signup'),body:userAcc.toJson(), headers:{'Content-Type': 'appliaction/json; charset=UTF-8',})
     switch(res.statusCode){
      case 200:
      final newUser = userAcc.copywith(
        uid: ,
      );
     }
    } catch (e) {
      print(e);
    }
  }
}
