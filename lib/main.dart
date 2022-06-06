import 'package:flutter/material.dart';
import 'package:funnews/pages/home/home_page.dart';
import 'package:funnews/pages/signup/signup_page.dart';
import 'pages/articles/articles_details_page.dart';
import 'pages/login/login_page.dart';
import 'pages/signup/signup_page.dart';
import 'pages/passReset/passReset.dart';
import 'package:get_it/get_it.dart';
import 'store/store.dart';

void main() {

  GetIt.I.registerSingleton<MainStore>(MainStore());

  return runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: 'login',

      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'login':
            builder = (BuildContext context) => const Login();
            break;
          case 'signUp':
            builder = (BuildContext context) => const SignUp();
            break;
          case 'passReset':
            builder = (BuildContext context) => const PassReset();
            break;
          case 'home':
            builder = (BuildContext context) => const HomePage();
            break;
          case 'articles':
            builder = (BuildContext context) => const ArticlePage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    )
  );
}