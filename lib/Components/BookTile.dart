import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String coverUrl;
  final String author;
  final int price;
  final int totalRating;
  final String rating;
  final int pages;
  const BookTile(
      {super.key,
      required this.title,
      required this.coverUrl,
      required this.author,
      required this.price,
      required this.totalRating,
      required this.rating,
      required this.pages, required Null Function() ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(2, 2),
                )
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  coverUrl,
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
                    title,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "By: $author",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Price: $price",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("Assets/Icons/star.svg"),
                      Text(
                        rating,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "$pages ratings",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
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
