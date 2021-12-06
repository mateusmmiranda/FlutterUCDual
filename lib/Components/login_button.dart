import 'package:flutter/material.dart';
import 'package:flutter_seguradora_ucdual/Screens/Login/login_screen.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Function press;
  const LoginButton({
    Key? key,
    required this.text,
    required this.press,
    Row? child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.blue,
          onSurface: Colors.red,
        ),
        onPressed: () {
          //Navigate to second route when tapped.
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
