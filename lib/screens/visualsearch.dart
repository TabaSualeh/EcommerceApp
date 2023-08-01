import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/widgets/appbar.dart';
import 'package:ecommerce_app/widgets/buttons.dart';
import 'package:flutter/material.dart';

class VisualSearch extends StatefulWidget {
  const VisualSearch({Key? key}) : super(key: key);

  @override
  State<VisualSearch> createState() => _VisualSearchState();
}

class _VisualSearchState extends State<VisualSearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppbar(bgColor: Colors.transparent)
          .appbarwithback(context, "Visual Search", false),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/boyImage.png"), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Search for an outfit by taking a photo or uploading an image",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 15),
              child: CustomButton(
                btnName: "TAKE A PHOTO",
              ),
            ),
            CustomButton(
              btnName: "UPLOAD AN IMAGE",
              borderColor: white6,
              borderRadius: 1.5,
              fontColor: white6,
              buttonBackgroundColor: Colors.transparent,
            )
          ],
        ),
      ),
    ));
  }
}
