import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'pages/home.dart';
import 'pages/login.dart';

class FluroRouter {
  static Router router = Router();
  static Handler _loginHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        LoginPage(),
  );

  static Handler _homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        HomePage(),
  );

  static void setupRouter() {
    router.define(
      'login',
      handler: _loginHandler,
    );
    router.define(
      'home',
      handler: _homeHandler,
    );
  }
}
