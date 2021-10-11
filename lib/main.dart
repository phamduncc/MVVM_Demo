import 'package:flutter/material.dart';
import 'package:mvvm_v2/view_model/user_list_view_model.dart';
import 'package:provider/provider.dart';

import 'model/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>UserListViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<UserListViewModel>(context, listen: false).getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Demo"),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<UserListViewModel>(context);
    return ListView.builder(
      itemCount: vm.userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Tên: "+vm.userList[index].name, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),),
            subtitle: Text("Tuổi: "+vm.userList[index].age.toString(),
              style: TextStyle(
                color: Colors.black
            ),),
          );
        } ,
    );
  }
}
