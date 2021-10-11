import 'package:flutter/material.dart';
import 'package:mvvm_v2/model/user.dart';
import 'package:mvvm_v2/serviece/web_serviece.dart';

class UserListViewModel extends ChangeNotifier {
  List<User> userList = [];

  getUserList() async {
    this.userList = await Webservice().getAllUser();
    notifyListeners();
  }
}
