import 'package:flutter/material.dart';






class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            SizedBox(
                height: 80,
                child:
                Image.asset("assets/Roots-Final-Logo-Transparent.png")),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.all(17.0),
              child: Text(
                "There was an error. please double check the link or contact support at intelltanitox@gmail.com",
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
