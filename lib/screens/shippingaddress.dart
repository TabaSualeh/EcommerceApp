import 'package:ecommerce_app/widgets/general/appbar.dart';
import 'package:ecommerce_app/widgets/general/buttons.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(bgColor: Colors.transparent)
          .appbarwithback(context, "Adding Shipping Address", false),
      body: Column(
        children: [
          Container(
            height: 35,
          ),
          _showtextfield(labeltext: "Full Name"),
          _showtextfield(labeltext: "Address"),
          _showtextfield(labeltext: "City"),
          _showtextfield(labeltext: "State/Province/Region"),
          _showtextfield(labeltext: "Zip Code (Postal Code)"),
          _showtextfield(labeltext: "Country"),
          Container(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(btnName: "SAVE ADDRESS", callback: () {}),
          )
        ],
      ),
    );
  }

  Widget _showtextfield({String? labeltext}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
              hintText: labeltext,
              labelText: labeltext,
            ),
          ),
        ),
        Container(
          height: 20,
        )
      ],
    );
  }
}
