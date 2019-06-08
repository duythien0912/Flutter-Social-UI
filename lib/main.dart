import 'package:flutter/material.dart';

import 'pages/login.dart';
import 'router.dart';

void main() {
  FluroRouter.setupRouter();
  return runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "IBM",
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: LoginPage(),
      initialRoute: 'login',
      onGenerateRoute: FluroRouter.router.generator,
    );
  }
}
