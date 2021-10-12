import 'package:flutter/material.dart';
import 'package:mvvm_v2/view_model/cake_list_view_model.dart';
import 'package:mvvm_v2/view_model/user_list_view_model.dart';
import 'package:provider/provider.dart';
import 'Component/list_cake.dart';
import 'Component/list_user.dart';
import 'locator.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserListViewModel()),
        ChangeNotifierProvider(create: (context) => CakeListViewModel()),
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
    // getIt.get<UserListViewModel>().getUserList();
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
    final cvm = getIt.get<CakeListViewModel>();
    return Column(
      children: [
        ListUser(vm: vm),
        SizedBox(height: 10,
        child: Divider(color: Colors.black,),
        ),
        ListCakes(cvm: cvm),
        Container(
          height: 30,
          child: ElevatedButton(
            onPressed: (){
              getIt.get<CakeListViewModel>().Insert();
            },
            child: Text("Thêm"),
          ),
        )
      ],
    );
  }
}

