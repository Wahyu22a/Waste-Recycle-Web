import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.black,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: Center(
            child: SizedBox(
              width: 25,
              height: 25,
              child: SvgPicture.asset('facebook.svg'),
            ),
          ),
        ),
        SizedBox(width: 30),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.black,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: Center(
            child: SizedBox(
              width: 25,
              height: 25,
              child: SvgPicture.asset('google.svg'),
            ),
          ),
        ),
        SizedBox(width: 30),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.black,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: Center(
            child: SizedBox(
              width: 25,
              height: 25,
              child: SvgPicture.asset('linkedin.svg'),
            ),
          ),
        ),
      ],
    );
  }
}
