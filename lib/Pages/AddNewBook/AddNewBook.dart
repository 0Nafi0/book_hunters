import 'package:book_hunters/Components/MutiLineTextFormField.dart';
import 'package:book_hunters/Components/MyTextFromField.dart';
import 'package:book_hunters/Config/Colors.dart';
import 'package:book_hunters/Controller/BookController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../Components/BackButton.dart';

class AddNewBookPage extends StatelessWidget {
  const AddNewBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    Bookcontroller bookcontroller = Get.put(Bookcontroller());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              color: Theme.of(context).colorScheme.primary,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyBackButton(),
                          Text(
                            "ADD NEW BOOK",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                          ),
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(
                                Icons.exit_to_app,
                                color: Theme.of(context).colorScheme.background,
                              ))
                        ],
                      ),
                      SizedBox(height: 60),
                      InkWell(
                        onTap: () {
                          bookcontroller.pickImage();
                        },
                        child: Container(
                          height: 190,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Theme.of(context).colorScheme.background),
                          child: Icon(Icons.add),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        // Add the user name here
                        'User Name',
                      ),
                      Text(
                        // Add the user email here
                        'user@example.com',
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.upload_sharp,
                              color: Theme.of(context).colorScheme.background,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "book pdf",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.audio_file,
                              color: Theme.of(context).colorScheme.background,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "book audio",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                MyTextFromField(
                  hintText: "Book title",
                  icon: Icons.book,
                  controller: bookcontroller.title,
                ),
                SizedBox(height: 10),
                MultiLineTextField(
                  hintText: "book description",
                  controller: bookcontroller.des,
                ),
                SizedBox(height: 10),
                MyTextFromField(
                  hintText: "Author Name",
                  icon: Icons.person,
                  controller: bookcontroller.auth,
                ),
                SizedBox(height: 10),
                MyTextFromField(
                  hintText: "About author",
                  icon: Icons.person,
                  controller: bookcontroller.aboutAuth,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: MyTextFromField(
                        hintText: "Price",
                        icon: Icons.currency_rupee,
                        controller: bookcontroller.price,
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: MyTextFromField(
                        hintText: "Pages",
                        icon: Icons.book,
                        controller: bookcontroller.pages,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: MyTextFromField(
                        hintText: "Language",
                        icon: Icons.language,
                        controller: controller,
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: MyTextFromField(
                        hintText: "Audio length",
                        icon: Icons.audiotrack,
                        controller: controller,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.close,
                              color: Theme.of(context).colorScheme.background,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "cancel",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.audio_file,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "post",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
