import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_project/pages/sign_in/register_page.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [buildMainSection(context)],
        ),
      ),
    );
  }

  buildMainSection(BuildContext context, {Widget? child, Widget? button}) {
    return Container(
      height: Get.height,
      width: double.infinity,
      child: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
                height: 610,
                color: Colors.orange,
                child: Container(
                    padding: EdgeInsets.fromLTRB(18, 50.0, 18, 0.0),
                    color: Colors.orange[900],
                    child: child)),
          ),
          const Padding(
            padding: EdgeInsets.all(58.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Food Shop",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150.0),
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 550,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  height: 3,
                  width: 40,
                  margin: EdgeInsets.only(top: 10.0, bottom: 30.0),
                  color: Colors.white,
                ),
                buildTextField(
                    text: "Full Name",
                    label: "Full Name",
                    icon: Icons.person,
                    isPassword: false),
                buildTextField(
                    text: "Email Address",
                    label: "Email Address",
                    icon: Icons.email_outlined,
                    isMail: true,
                    isPassword: false),
                buildTextField(
                    text: "Password",
                    label: "Password",
                    icon: Icons.lock_clock_outlined,
                    isPassword: true),
                buildTextField(
                    text: "Confirm Password",
                    label: "Confirm Password",
                    icon: Icons.lock_clock_outlined,
                    isPassword: true),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Daftar',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextField buildTextField(
      {String? text,
      String? label,
      IconData? icon,
      bool isMail = false,
      bool isPassword = false}) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      keyboardType: isMail ? TextInputType.emailAddress : null,
      decoration: InputDecoration(
        hintText: text,
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        suffixIcon: isPassword
            ? IconButton(
                icon: showPass
                    ? const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                      )
                    : const Icon(Icons.remove_red_eye, color: Colors.white),
                onPressed: () {
                  setState(() {
                    showPass = !showPass;
                  });
                },
              )
            : null,
      ),
    );
  }
}
