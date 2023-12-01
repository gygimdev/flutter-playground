import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String name;
  int number;
  final String size;

  Product({required this.name, required this.number, required this.size});

  void changeProductNumber() {
    this.number++;
    notifyListeners();
  }
}