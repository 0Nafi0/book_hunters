import 'package:book_hunters/Components/BookCard.dart';
import 'package:book_hunters/Components/BookTile.dart';
import 'package:book_hunters/Config/Colors.dart';
import 'package:book_hunters/Models/Data.dart';
import 'package:book_hunters/Pages/BookDetails/BookDetails.dart';
import 'package:book_hunters/Pages/HomePage/Widgets/CategoryWidget.dart';
import 'package:book_hunters/Pages/HomePage/Widgets/HomeAppBar.dart';
import 'package:book_hunters/Pages/HomePage/Widgets/MyInputTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                          const HomeAppBar(),
                          const SizedBox(height: 30),
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
                          const SizedBox(height: 10),
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
                          const SizedBox(height: 20),
                          const MyInputTextField(),
                          const SizedBox(height: 20),
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
                                title: e.title!,
                                coverUrl: e.coverUrl!,
                                ontap: () {
                                  Get.to(BookDetails(book: e));
                                },
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: bookData
                        .map((e) => BookTile(
                            title: e.title!,
                            coverUrl: e.coverUrl!,
                            author: e.author!,
                            price: e.price!,
                            totalRating: 12,
                            rating: e.rating!,
                            pages: e.pages!, ontap: () {  },))
                        .toList(),
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
