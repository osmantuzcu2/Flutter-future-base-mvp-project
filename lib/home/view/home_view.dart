import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider_model.dart';
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final _result = Provider.of<Cookies>(context);
    _result.getSubject();
    return Scaffold(
      appBar: AppBar(title: Text('MVP BASE'),),
      body: Center(
        child: Text(_result.subject),
      ),
    );
  }
}