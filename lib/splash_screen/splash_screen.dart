import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/splash_screen/controller/splash_controller.dart';
import 'package:task/utils/number_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.blue,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: doubleTwelve),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/gallary.png',
                  width: doubleTwoHundredrm -rf .git
                  ,
                ),
              ),
              AnimatedAlign(
                curve: Curves.easeInOut,
                alignment: controller.isAnimatedAlign.value == true
                    ? Alignment.topCenter
                    : Alignment.center,
                duration: const Duration(seconds: intTwo),
                child: AnimatedOpacity(
                  duration: const Duration(seconds: intTwo),
                  opacity:
                      controller.isAnimatedAlign.value ? doubleZero : doubleOne,
                  child: const Hero(
                    tag: 'hero',
                    child: Text(
                      'PixSnap',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: doubleTwentyFive,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
