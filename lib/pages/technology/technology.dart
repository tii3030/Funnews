import 'package:flutter/material.dart';
import 'package:funnews/components/customListTile.dart';
import '../../model/article_model.dart';
import '../../../services/api_service.dart';
import '../../components/shimmer.dart';

class Technology extends StatelessWidget {
  const Technology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.light,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.light, 
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  ApiService client = ApiService();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body:

      FutureBuilder(
        future: client.getArticle("Technology"),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot){

          if(snapshot.hasData) {

            List<Article>? articles = snapshot.data;
            return ListView.builder(
              itemCount: articles!.length,
              itemBuilder: (context, index) => customListTile(articles[index], context),
            );
          }

          return ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => customShimmer(context),
          );
        }
      ),
    );  
  }
}