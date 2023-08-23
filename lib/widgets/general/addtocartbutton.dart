import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/model/product.dart';
import 'package:flutter/material.dart';

class AddtocartIconButton extends StatefulWidget {
  final Product cart;
  AddtocartIconButton({
    required this.cart,
  });

  @override
  State<AddtocartIconButton> createState() => _AddtocartIconButtonState();
}

class _AddtocartIconButtonState extends State<AddtocartIconButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        bagList.add(widget.cart);
        totalamount = double.parse(widget.cart.price!) + totalamount;
      },
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200), color: redIconwithButton),
        child: Icon(
          Icons.shopping_bag_rounded,
          size: 21,
          color: whiteFavorite,
        ),
      ),
    );
  }
}
