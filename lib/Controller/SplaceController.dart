import 'package:book_hunters/Pages/WelcomePage.dart';
import 'package:get/get.dart';

class Splacecontroller extends GetxController {

  @override
  void onInit() {

    super.onInit();
    splaceController();
  }

  void splaceController() {
    Future.delayed(Duration(seconds: 4), () {
      Get.offAll(const WelcomePage());
    });
  }
}