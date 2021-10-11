import 'package:http/http.dart' as http;
import 'package:mvvm_v2/model/user.dart';
import 'dart:convert';

class Webservice {

  Future<List<User>> getAllUser() async {

    final url = Uri.parse('https://6141b00e357db50017b3dc0c.mockapi.io/users');
    final response = await http.get(url);
    if(response.statusCode == 200) {

      var list = json.decode(response.body)as List<dynamic>;
       List<User> users= list.map((model) => User.fromJson(model)).toList();
      return users;

    } else {
      throw Exception("Unable to perform request!");
    }
  }
}