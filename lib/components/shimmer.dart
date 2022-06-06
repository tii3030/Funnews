import 'package:flutter/material.dart';
import 'package:funnews/colors/colors.dart';
import 'package:shimmer/shimmer.dart';

Widget customShimmer(BuildContext context) =>

  Container(

    margin: const EdgeInsets.all(12.0),
    padding: const EdgeInsets.all(8.0),

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 3.0,
        ),
      ]
    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Shimmer.fromColors(
          baseColor: (Colors.grey[300])!,
          highlightColor: (Colors.grey[100])!,
          direction: ShimmerDirection.ltr,
          enabled: true,
          child:

          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),

        const SizedBox(height: 8.0),

        Shimmer.fromColors(
          baseColor: (Colors.grey[300])!,
          highlightColor: (Colors.grey[100])!,
          direction: ShimmerDirection.ltr,
          enabled: true,
          child:

          Container(
            height: 30,
            width: 90,
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),

        const SizedBox(height: 8.0),

        Shimmer.fromColors(
          baseColor: (Colors.grey[300])!,
          highlightColor: (Colors.grey[100])!,
          direction: ShimmerDirection.ltr,
          enabled: true,
          child:

          Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        
        const SizedBox(height: 8.0),

        Shimmer.fromColors(
          baseColor: (Colors.grey[300])!,
          highlightColor: (Colors.grey[100])!,
          direction: ShimmerDirection.ltr,
          enabled: true,
          child:

          Container(
            width: 300,
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),

        const SizedBox(height: 8.0),

          Shimmer.fromColors(
          baseColor: (Colors.grey[300])!,
          highlightColor: (Colors.grey[100])!,
          direction: ShimmerDirection.ltr,
          enabled: true,
          child:

          Container(
            width: 200,
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ],
    ),
  );