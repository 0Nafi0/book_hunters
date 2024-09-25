import 'package:book_hunters/Config/Colors.dart';
import 'package:book_hunters/Pages/ProfilePage/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("Assets/Icons/dashboard.svg"),
        Text(
          "BOOK HUNTERS",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Theme.of(context).colorScheme.background),
        ),
        InkWell(
          onTap: () {
            Get.to(const Profilepage());
          },
          child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.background,
              child: Text(
                "N",
                style: TextStyle(
                  color: priamryColor,
                ),
              )),
        )
      ],
    );
  }
}