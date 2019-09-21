import 'package:flutter/material.dart';
import 'package:flutter_customscrollview_test2/pages/home_page.dart';

import 'themes.dart';

void main() => runApp(CustomTheme(initialThemeKey: MyThemeKeys.LIGHT ,child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.of(context),
      home: HomePage(),
    );
  }
}