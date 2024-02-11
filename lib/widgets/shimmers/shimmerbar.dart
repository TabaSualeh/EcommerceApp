import 'package:ecommerce_app/widgets/general/favoriteIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants/colors.dart';

class BarShimmer extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BarShimmer({required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: screenHeight * 0.40,
      child: ListView.builder(
        shrinkWrap: true,
        // scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return Card(
              color: Colors.grey.shade300.withOpacity(0.6),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300.withOpacity(0.6),
                highlightColor: Colors.grey.shade200,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: screenWidth * 0.32,
                          height: screenHeight * 0.18,
                          margin: const EdgeInsets.only(right: 11),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 11),
                              Container(
                                width: screenWidth * 0.30,
                                height: screenHeight * 0.016,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: screenWidth * 0.50,
                                height: screenHeight * 0.016,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(height: 16),
                              RatingBar.builder(
                                ignoreGestures: true,
                                initialRating: 0,
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
                              const SizedBox(height: 8),
                              Container(
                                width: screenWidth * 0.20,
                                height: screenHeight * 0.016,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ));
        }),
        itemCount: 5,
      ),
    );
  }
}
