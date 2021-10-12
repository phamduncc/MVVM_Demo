import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mvvm_v2/model/user.dart';
import 'package:mvvm_v2/service/web_service.dart';

class UserListViewModel extends ChangeNotifier {
  List<User> userList = [];

  getUserList() async {
    this.userList = await Webservice().getAllUser();
    notifyListeners();
  }
}
