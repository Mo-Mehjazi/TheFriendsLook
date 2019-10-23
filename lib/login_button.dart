// Flutter
import 'package:flutter/material.dart';
// Packages
import 'package:flutter_svg/flutter_svg.dart';

class LoginButton extends StatelessWidget {
  final String assetPath;
  final String text;
  final Color color;
  final Function onPressed;

  LoginButton(this.assetPath, this.text, this.color, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 250,
        height: 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              assetPath,
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Sign in with ' + text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
