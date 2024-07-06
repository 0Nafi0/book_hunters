import 'package:book_hunters/Components/BackButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookDetailsHeader extends StatelessWidget {
  const BookDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MyBackButton(),
            SvgPicture.asset(
              "Assets/Icons/heart.svg",
              color: Theme.of(context).colorScheme.background,
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "Assets/Images/Give and Take.jpg",
                width: 170,
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
        Text(
          "Beach Town: Apocalypse",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
        ),
        Text(
          "Author: Nafi",
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          "Publishiing and graphic design, lorem ipsum",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: Theme.of(context).colorScheme.background),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Rating",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.background)),
                Text("4.7",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.background))
              ],
            ),
            Column(
              children: [
                Text("Pages",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.background)),
                Text("203",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.background))
              ],
            ),
            Column(
              children: [
                Text("Language",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.background)),
                Text("ENG",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.background))
              ],
            ),
            Column(
              children: [
                Text("Audio",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.background)),
                Text("2 hr",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.background))
              ],
            ),
          ],
        )
      ],
    );
  }
}
