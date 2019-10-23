// Flutter
import 'package:flutter/material.dart';
// Local
import './login_button.dart';

const googleColor = Color(0xFFDB4437);
const facebookColor = Color(0xFF29487D);
const twitterColor = Color(0xFF1DA1F2);

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.accessible_forward,
                  size: 80,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'TheFriendsLook',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                LoginButton(
                  'assets/images/google_logo.svg',
                  'Google',
                  googleColor,
                  () {
                    // TODO: handle google login  
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                LoginButton(
                  'assets/images/facebook_logo.svg',
                  'Facebook',
                  facebookColor,
                  () {
                    // TODO: handle facebook login
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                LoginButton(
                  'assets/images/twitter_logo.svg',
                  'Twitter',
                  twitterColor,
                  () {
                    // TODO: handle twitter login
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
