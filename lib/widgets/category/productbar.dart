import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/model/product.dart';
import 'package:ecommerce_app/widgets/general/favoriteIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCatBar extends StatefulWidget {
  Product? productItem;
  final VoidCallback callback;
  ProductCatBar({required this.productItem, required this.callback});

  @override
  State<ProductCatBar> createState() => _ProductCatBarState();
}

class _ProductCatBarState extends State<ProductCatBar> {
  @override
  Widget build(BuildContext context) {
    void state() {
      setState(() {});
    }

    double screeHeight = MediaQuery.of(context).size.width;
    return Card(
        color: greyLightTextField,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: widget.callback,
                  child: Container(
                    width: screeHeight * 0.32,
                    height: screeHeight * 0.38,
                    margin: const EdgeInsets.only(right: 11),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4),
                            bottomLeft: Radius.circular(4)),
                        image: DecorationImage(
                            image: NetworkImage(widget.productItem!.image!),
                            fit: BoxFit.fill)),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 11),
                      Text(
                        widget.productItem!.name!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        widget.productItem!.description!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 11),
                      ),
                      const SizedBox(height: 11),
                      RatingBar.builder(
                        ignoreGestures: true,
                        initialRating:
                            double.parse(widget.productItem!.rating!),
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 18,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text(
                        "${double.parse(widget.productItem!.price!).toStringAsFixed(0)}\$",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Transform.translate(
                offset: const Offset(251, 98),
                child: FavoriteIconButton(
                  state: () {
                    state;
                  },
                  favorite: widget.productItem!,
                  isFavorite: favoriteList
                      .any((element) => element.id == widget.productItem!.id),
                ))
          ],
        ));
  }
}
