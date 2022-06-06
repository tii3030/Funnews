// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:funnews/colors/colors.dart';
import 'package:funnews/images/images.dart';
import 'package:funnews/pages/articles/articles_details_page.dart';
//import 'package:url_launcher/url_launcher.dart';
import '../model/article_model.dart';
import 'package:shimmer/shimmer.dart';

Widget customListTile(Article article, BuildContext context) {

  // _launchURL() async {
  //   String url = (article.url).toString();
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  return InkWell(

    onTap: () {
      //_launchURL();
      //Navigator.pushNamed(context, 'articles');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ArticlePage(article: article)),
      );
    },

    child: 

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
          article.urlToImage != null ?
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage((article.urlToImage).toString()), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12.0),
            ),
          )
          :
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: 
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child:AppImages.imgNotFound,
            ),
          ),

          const SizedBox(height: 8.0),

          Container(
            height: 30,
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Text(
              (article.source!.name).toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 8.0),

          Text(
            (article.title).toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    ),
  );
}

Widget shimmer() =>
  Shimmer.fromColors(
    baseColor: (Colors.grey[400])!,
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
  );