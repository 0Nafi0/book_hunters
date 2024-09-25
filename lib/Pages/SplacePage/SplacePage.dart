import 'package:book_hunters/Controller/SplaceController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Splacepage extends StatelessWidget {
  const Splacepage({super.key});

  @override
  Widget build(BuildContext context) {
    Splacecontroller splacecontroller = Get.put(Splacecontroller());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Lottie.asset("Assets/Animation/Anim1.json"),
      ),
    );
  }
}