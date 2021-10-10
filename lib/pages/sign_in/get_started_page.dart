import 'package:flutter/material.dart';
import 'package:my_project/helpers/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/pages/sign_in/sign_in_email.dart';
import 'package:get/get.dart';

class GetStartedPage extends StatefulWidget {
  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackground(context),
          buildTitle(context),
          buildSocialSignin(context),
        ],
      ),
    );
  }

  buildBackground(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/food.jpg'), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black87,
                Colors.black45,
                Colors.black87,
              ])),
        ),
      ),
    );
  }

  buildSocialSignin(BuildContext context) {
    return Positioned(
        bottom: 20.0,
        left: kDefaultMargin,
        right: kDefaultMargin,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: ButtonSignIn(
                        Icons.facebook_rounded, 'Sign In', SignWithEmail())),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: ButtonSignIn(
                      Icons.email_outlined, 'Email', SignWithEmail()),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ButtonSignIn(Icons.login, 'Register', SignWithEmail())
          ],
        ));
  }

  Container ButtonSignIn(IconData icon, String text, Widget Page) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.orange.shade600,
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: MaterialButton(
        onPressed: () {
          Get.to(() => Page);
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${text}',
              style: TextStyle(
                color: Colors.orange[600],
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildTitle(BuildContext context) {
    return Positioned(
      top: 200,
      left: 35.0,
      right: 35.0,
      child: Center(
        child: Column(
          children: [
            Text(
              'Beli Makan!',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Text(
              'Perut Kenyang Hati Pun Senang..',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 13, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
