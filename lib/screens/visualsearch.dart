import 'package:ecommerce_app/widgets/appbar.dart';
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
    ));
  }
}
