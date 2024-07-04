import 'package:book_hunters/Config/Colors.dart';
import 'package:book_hunters/Models/Data.dart';
import 'package:book_hunters/Pages/HomePage/Widgets/CategoryWidget.dart';
import 'package:book_hunters/Pages/HomePage/Widgets/HomeAppBar.dart';
import 'package:book_hunters/Pages/HomePage/Widgets/MyInputTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.primary,
            height: 500,
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(height: 50),
                        HomeAppBar(),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Text(
                              "Good Morning ✌",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background),
                            ),
                            Text(
                              "Nafi",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Time to read book and enhance your knowledge",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        MyInputTextField(),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              "Topics",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: categoryData
                                .map((e) => CategoryWidget(
                                      iconPath: e["icon"]!,
                                      btnName: e["label"]!,
                                    ))
                                .toList(),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
