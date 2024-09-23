import 'dart:developer';

import 'package:get/get.dart';
import 'package:task/routes/routes.dart';
import 'package:task/utils/number_constant.dart';

class SplashController extends GetxController {
  var isAnimatedAlign = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    updateAlignment();

    Future.delayed(const Duration(seconds: intThree), () {
      Get.offAllNamed(AppRoutes.imageScreen);
    });
  }

  void updateAlignment() async {
    isAnimatedAlign.value = false;
    log('the ${isAnimatedAlign.value}');
    update();
  }
}
