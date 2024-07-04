import 'package:book_hunters/Components/BookCard.dart';
import 'package:book_hunters/Config/Colors.dart';
import 'package:book_hunters/Models/Data.dart';
import 'package:book_hunters/Pages/HomePage/Widgets/CategoryWidget.dart';
import 'package:book_hunters/Pages/HomePage/Widgets/HomeAppBar.dart';
import 'package:book_hunters/Pages/HomePage/Widgets/MyInputTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Trending",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookData
                          .map((e) => BookCard(
                                title: e.title,
                                coverUrl: e.coverUrl,
                                ontap: () {},
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.2),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(2, 2),
                                )
                              ]),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "Assets/Images/never splite yje difference.jpg",
                                  width: 100,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rich dad poor dad | Book of the year",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "By: Robert Kiyosaki",
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Price: Free",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset("Assets/Icons/star.svg"),
                                      Text(
                                        "4.5",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                      Text(
                                        "123 ratings",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
