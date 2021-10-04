import 'package:flutter/material.dart';
import 'package:my_project/helpers/constants.dart';
import 'package:my_project/pages/onboard/model/onboarding_model.dart';
import 'package:dots_indicator/dots_indicator.dart';

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
          child: Text(
            "Skip >>",
            style: TextStyle(
                color: Colors.orange[600], fontWeight: FontWeight.w600),
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
                    Text(onBoarding.title),
                    SizedBox(height: 15),
                    Text(
                      onBoarding.description,
                      textAlign: TextAlign.center,
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
      right: kDefaultMargin,
        child: ElevatedButton(
      onPressed: () {},
      child: Row(children: [
        Text("Get Started"),
        Icon(Icons.arrow_right_outlined)
      ],),
    ));
  }
}
