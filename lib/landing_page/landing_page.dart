import 'package:flutter/material.dart';
import 'package:myproject/auth_page/auth_service.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: ElevatedButton(
          onPressed: () async {
            await AuthServices.signOut();
          },
          child: Text('Sign Out'),
        ),
      ),
    );
  }
}
