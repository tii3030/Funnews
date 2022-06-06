import 'dart:convert';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import '../model/article_model.dart';
import '../store/store.dart';

class ApiService {

  final endPointUrl = "newsapi.org";
  final client = http.Client();
  final store = GetIt.I.get<MainStore>();

  Future<List<Article>> getArticle(String category) async {

    final queryParameters = {
      'country': store.countrs,
      'category': category,
      'apiKey': 'b96a55ad7b34463589e162a1b4280886',
      'pageSize': '50'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];

    List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}