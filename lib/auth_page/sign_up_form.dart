import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'auth_service.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width / 2,
      height: _size.height,
      color: Colors.deepPurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 7),
          Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 150),
            child: TextField(
              controller: emailController,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                prefixIconConstraints:
                    BoxConstraints(minHeight: 24, minWidth: 24),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 15),
                  child: SvgPicture.asset('person.svg'),
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 150),
            child: TextField(
              controller: passwordController,
              cursorColor: Colors.black,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                prefixIconConstraints:
                    BoxConstraints(minHeight: 24, minWidth: 24),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 15),
                  child: SvgPicture.asset('lock.svg'),
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 150),
            child: TextField(
              cursorColor: Colors.black,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                prefixIconConstraints:
                    BoxConstraints(minHeight: 24, minWidth: 24),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 15),
                  // child: SvgPicture.asset('lock.svg'),
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.green.shade400,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () async {
                  await AuthServices.signUp(
                      emailController.text, passwordController.text);
                },
                hoverColor: Colors.black,
                borderRadius: BorderRadius.circular(25),
                child: Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Text(
            'Or you can sign up with social platforms',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(flex: 11),
        ],
      ),
    );
  }
}
