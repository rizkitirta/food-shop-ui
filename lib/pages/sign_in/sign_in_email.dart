import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_project/pages/sign_in/register_page.dart';
import 'package:get/get.dart';

class SignWithEmail extends StatefulWidget {
  const SignWithEmail({Key? key}) : super(key: key);

  @override
  State<SignWithEmail> createState() => _SignWithEmailState();
}

class _SignWithEmailState extends State<SignWithEmail> {
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
                height: 520,
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
            height: 500,
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
                    text: "Email",
                    label: "Email",
                    icon: Icons.email_outlined,
                    isPassword: false),
                buildTextField(
                    text: "Password",
                    label: "Password",
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
                          'Sign In',
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
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "Tidak Punya Akun?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      child: const Text(
                        "Daftar Sekarang",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Get.to(() => RegisterPage());
                      }),
                ]),
                Center(
                    child: Column(
                  children: [
                    const Text(
                      "Atau Daftar Dengan",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              color: Colors.red[500],
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                              child: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              color: Colors.blue[500],
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                              child: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          )),
                        ),
                      ],
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextField buildTextField(
      {String? text, String? label, IconData? icon, bool isPassword = false}) {
    return TextField(
      style: const TextStyle(color: Colors.white),
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
