import 'package:book_hunters/Components/BackButton.dart';
import 'package:book_hunters/Config/Colors.dart';
import 'package:book_hunters/Pages/BookDetails/HeaderWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              //height: 500,
              color: priamryColor,
              child: Row(
                children: [
                  Expanded(
                    child: BookDetailsHeader(),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "About book",
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "About Author",
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                        color: priamryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("Assets/Icons/playe.svg"),
                            const SizedBox(width: 10),
                            Text(
                              "READ BOOK",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      letterSpacing: 1.2),
                            )
                          ],
                        ),
                        Container(
                          width: 3,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("Assets/Icons/book.svg"),
                            const SizedBox(width: 10),
                            Text(
                              "READ BOOK",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      letterSpacing: 1.2),
                            )
                          ],
                        ),
                      ],
                    ),
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
