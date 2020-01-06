import 'package:flutter/material.dart';
import 'package:mvp_base/home/model/home_model.dart';
import 'package:mvp_base/home/service/home_service.dart';
import 'package:mvp_base/locator.dart';

class Cookies with ChangeNotifier {
  String name = '';
  String subject='';

  void addname(String n) {
    name = n;
    notifyListeners();
  }
  Future<void> getSubject() async {
    ApiService _apiService = locator<ApiService>();
    HomeModel result = await _apiService.homeService();
    subject = result.subject;
    notifyListeners();
  }
  

}