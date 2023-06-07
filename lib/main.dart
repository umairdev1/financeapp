import 'package:financeapp/views/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

import 'utilis/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            backgroundColor: kblueClr,
            iconTheme: IconThemeData(color: kblackClr),
            titleTextStyle: TextStyle(color: kblackClr, fontSize: 16),
            elevation: 0,
            centerTitle: true,
          )),
      home: const WelcomeView(),
    );
  }
}
