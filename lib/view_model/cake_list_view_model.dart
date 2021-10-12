import 'package:flutter/material.dart';
import 'package:mvvm_v2/model/Cake.dart';

class CakeListViewModel extends ChangeNotifier{
  List<Cake> cakes = [
    Cake(
      id: 1,
      title: "Cocolate",
      price: 20,
      size: 24,
    ),
    Cake(
      id: 2,
      title: "Dâu tây",
      price: 34,
      size: 24,
    ),
    Cake(
      id: 3,
      title: "Cocolate 2",
      price: 50,
      size: 30,
    ),
    Cake(
      id: 4,
      title: "Bông lan trà xanh",
      price: 34,
      size: 27,
    ),
    Cake(
      id: 5,
      title: "Chocolate 3",
      price: 60,
      size: 36,
    ),
    Cake(
      id: 6,
      title: "Dâu tây 2",
      price: 40,
      size: 33,
    ),
    Cake(
      id: 7,
      title: "chocolate kem dâu",
      price: 34,
      size: 30,
    ),

  ];
  Delete(int index){
    cakes.removeAt(index);
    notifyListeners();
  }
  Insert(){
    cakes.add(
        Cake(
      id: cakes.length+1,
      title: "New Cake",
      price: 00,
      size: 00,
    )
    );
    notifyListeners();
  }
  Update(int index){
    cakes[index]= Cake(
      id: index,
      title: "update Cake",
      price: 00,
      size: 00,
    );
    notifyListeners();
  }
}
