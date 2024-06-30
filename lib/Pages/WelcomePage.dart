import 'package:book_hunters/Components/MyButton.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      Image.asset(
                        "Assets/Images/book.png",
                        width: 300,
                      ),
                      const SizedBox(height: 60),
                      Text(
                        "Book Hunters",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Flexible(
                        child: Text(
                          "Here you can find the best book where you can read and write",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                              ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Disclaimer",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "This bookstore app provides general information and materials for educational purposes only. We do not guarantee the accuracy, completeness, or reliability of any content. Users should verify details independently. We are not responsible for any loss or damage resulting from the use of this app or its content.",
                        style: Theme.of(context).textTheme.labelSmall,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PrimaryButton(btnName: "CONTINUE", ontap: () {}),
          )
        ],
      ),
    );
  }
}
