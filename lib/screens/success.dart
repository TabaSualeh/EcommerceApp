import 'package:ecommerce_app/widgets/general/buttons.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 192,
          ),
          Container(
              child: Column(children: [
            Image.asset("assets/images/bags.png"),
            Padding(
              padding: const EdgeInsets.only(top: 49),
              child: Text(
                "Success!",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: SizedBox(
                width: 225,
                height: 42,
                child: Text(
                  "Your order will be delivered soon.\nThank you for choosing our app!",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            )
          ])),
          Container(
            height: 163,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(btnName: "Coninue Shopping", callback: () {}),
          )
        ],
      ),
    );
  }
}
