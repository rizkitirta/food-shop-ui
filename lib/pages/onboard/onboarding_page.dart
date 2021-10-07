import 'package:flutter/material.dart';
import 'package:my_project/helpers/constants.dart';
import 'package:my_project/pages/onboard/model/onboarding_model.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/pages/sign_in/get_started_page.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          buildSkipButton(context),
          buildMainSection(context),
          buildDotsIndicator(context),
          buildGetStartedButton(context),
        ],
      ),
    );
  }

  buildSkipButton(BuildContext context) {
    return Positioned(
        top: 50.0,
        right: kDefaultMargin,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Text(
                "Skip",
                style: TextStyle(
                    color: Colors.orange[600], fontWeight: FontWeight.w600),
              ),
              Icon(Icons.arrow_forward_ios, size: 13, color: Colors.orange[600])
            ],
          ),
        ));
  }

  buildMainSection(BuildContext context) {
    return Positioned(
        top: 100.0,
        left: kDefaultMargin,
        right: kDefaultMargin,
        bottom: 100.0,
        child: PageView.builder(
            itemCount: 3,
            onPageChanged: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            itemBuilder: (context, index) {
              var onBoarding = onBoardingList[index];
              return Container(
                child: Column(
                  children: [
                    Image.asset(onBoarding.path),
                    SizedBox(
                      height: 15,
                    ),
                    Text(onBoarding.title,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold))),
                    SizedBox(height: 15),
                    Text(
                      onBoarding.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ],
                ),
              );
            }));
  }

  buildDotsIndicator(BuildContext context) {
    return Positioned(
        bottom: 200.0,
        left: 0.0,
        right: 0.0,
        child: Center(
            child: DotsIndicator(
          dotsCount: onBoardingList.length,
          position: _currentIndex.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeColor: Colors.orange.shade600,
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        )));
  }

  buildGetStartedButton(BuildContext context) {
    return Positioned(
      bottom: 10.0,
      left: kDefaultMargin,
      right: kDefaultMargin,
      child: InkWell(
        child: Container(
          height: 50.0,
          child: GestureDetector(
            onTap: () {
              Get.off(() => GetStartedPage());
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
