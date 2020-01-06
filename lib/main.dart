import 'package:flutter/material.dart';
import 'package:mvp_base/provider_model.dart';
import 'package:provider/provider.dart';
import 'home/view/home_view.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
  } 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cookies>.value(
      value: Cookies(),
    child: MaterialApp(
      home: Home(),
    )
    );
  }
}
