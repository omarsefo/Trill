import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trill/ThemeSystem.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacementNamed("home");
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return SvgPicture.asset('assets/icons/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Find your new Home",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildImage('undraw_sweet_home_dkhr.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Your new Car is here",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: _buildImage('undraw_vehicle_sale_a645.svg'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Text("Back", style: TextStyle(fontWeight: FontWeight.w600,color: kPrimaryColor)),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,color: kPrimaryColor)),
      next: const Text("Next", style: TextStyle(fontWeight: FontWeight.w600,color: kPrimaryColor)),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600,color: kPrimaryColor)),
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeColor: kPrimaryColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
