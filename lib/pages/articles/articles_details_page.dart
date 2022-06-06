import 'package:flutter/material.dart';
import 'package:funnews/colors/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../model/article_model.dart';

class ArticlePage extends StatefulWidget {

  final Article? article;
  const ArticlePage ({ Key? key, this.article }): super(key: key);

  @override
  _ClassArticle createState() => _ClassArticle();
}

class _ClassArticle extends State<ArticlePage> {

  bool isLoading = true;
 
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () =>   Navigator.pop(context),
        ),

        backgroundColor: AppColors.primary,
        title: Text((widget.article!.title).toString()),
      ),

      body: 

      Stack(
        children: <Widget>[

          WebView(
            initialUrl: widget.article!.url,
            javascriptMode: JavascriptMode.unrestricted,
            gestureNavigationEnabled: true,

            onPageStarted: (value) {
              setState(() {
                isLoading = true;
              });
            },

            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),

          isLoading ? const Center( child: CircularProgressIndicator(backgroundColor: AppColors.primary, color: Colors.black)) : Stack(),
        ],
      ),
         
    );
  }
}