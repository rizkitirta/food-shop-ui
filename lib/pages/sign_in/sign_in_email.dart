import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

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
      height: 550.0,
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
          Padding(
            padding: const EdgeInsets.all(58.0),
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
                Text(
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
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    hintText: "Email",
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: showPass ? false : true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_outline_sharp,
                      color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                      icon: showPass
                          ? Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                            )
                          : Icon(Icons.remove_red_eye, color: Colors.white),
                      onPressed: () {
                        setState(() {
                          showPass = !showPass;
                        });
                      },
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
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
                  Text(
                    "Tidak Punya Akun?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      child: Text(
                        "Daftar Sekarang",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {}),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
