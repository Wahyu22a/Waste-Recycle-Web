import 'package:flutter/material.dart';
import 'package:myproject/auth_page/login_form.dart';
import 'package:myproject/auth_page/sign_up_form.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              SignUpForm(),
              LoginForm(),
            ],
          ),
        ],
      ),
    );
  }
}
