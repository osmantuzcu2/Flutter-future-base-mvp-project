import 'package:mvp_base/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:mvp_base/home/model/home_model.dart';

class ApiService {
  @override
  Future<HomeModel> homeService() async {
    var response =
        await http.Client().get(baseUrl + 'fs.json').catchError((e) {
      return null;
    });

    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        var jsonResponse = convert.jsonDecode(response.body);
        return HomeModel(subject: jsonResponse['subject']); 

      } else {
        return null;
      }
    }
    return null;
  }
}
