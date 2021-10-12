import 'package:flutter/material.dart';
import 'package:mvvm_v2/view_model/user_list_view_model.dart';
class ListUser extends StatelessWidget {
  const ListUser({
    Key? key,
    required this.vm,
  }) : super(key: key);

  final UserListViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.4,
      child: ListView.builder(
        itemCount: vm.userList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                "Tên: " + vm.userList[index].name,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              subtitle: Text(
                "Tuổi: " + vm.userList[index].age.toString(),
                style: TextStyle(color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}

