import 'package:flutter/material.dart';
import 'package:mvvm_v2/view_model/cake_list_view_model.dart';
import 'package:provider/provider.dart';

import '../locator.dart';

class ListCakes extends StatelessWidget {
  const ListCakes({
    Key? key,
    required this.cvm,
  }) : super(key: key);

  final CakeListViewModel cvm;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.4,
      child: ListView.builder(
        itemCount: cvm.cakes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                "Tên: " + cvm.cakes[index].title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Giá: " + cvm.cakes[index].price.toString(),
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(width: 10,),
                  Text("Size: "+ cvm.cakes[index].size.toString(),
                    style: TextStyle(color: Colors.brown),
                  )
                ],
              ),
              trailing: Container(
                width: 150,
                child: Row(
                  children: [
                    TextButton(
                      child: Text("Xóa"),
                      onPressed: (){
                        getIt.get<CakeListViewModel>().Delete(index);
                      },
                    ),
                    TextButton(
                      child: Text("Sửa"),
                      onPressed: (){
                        getIt.get<CakeListViewModel>().Update(index);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
