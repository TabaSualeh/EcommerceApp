import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shimmer/shimmer.dart';

class GridShimmer extends StatelessWidget {
  final double screenHeight;
  GridShimmer({required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300.withOpacity(0.6),
      highlightColor: Colors.grey.shade200,
      child: SizedBox(
        height: screenHeight * 0.40,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: ((context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenHeight * 0.20,
                    height: screenHeight * 0.24,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(height: 7),
                  RatingBar.builder(
                    unratedColor: Colors.white,
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
                    onRatingUpdate: (rating) {},
                  ),
                  const SizedBox(height: 7),
                  Container(
                    width: screenHeight * 0.09,
                    height: screenHeight * 0.016,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Container(
                    width: screenHeight * 0.14,
                    height: screenHeight * 0.016,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )
                ],
              ),
            );
          }),
          itemCount: 5,
        ),
      ),
    );
  }
}
