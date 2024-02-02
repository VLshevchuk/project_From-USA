import 'package:flutter/material.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/userAuthorization/login_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 178.0,
      ),
      child: Center(
        child: Column(
          children: [
            const Text(
              "From USA",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w800,
                fontFamily: "Lato",
                color: Color.fromRGBO(38, 50, 56, 1),
                letterSpacing: 0.5,
              ),
            ),
            globals.sizedBoxHeight20px,
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              icon: Image.asset(
                "assets/image70.png",
              ),
              iconSize: globals.width * 0.8,
            )
          ],
        ),
      ),
    );
  }
}
