import 'package:flutter/material.dart';

class Cart_Model extends ChangeNotifier {
  final List _shop_items = [
    ["Avacado", "4.00", "lib/images/avacados.png", Colors.green],
    ["Moos", "2.00", "lib/images/bananas.png", Colors.yellow],
    ["Yaanyo", "1.00", "lib/images/tomato.png", Colors.red],
    ["Qare", "3.00", "lib/images/qaros.png", Colors.green]
  ];
  // List of Cart Items
  List _cartitems = [];

  get shopItems => _shop_items;

  get cartitems => _cartitems;

  // add Item To Cart
  void addItemtoCart(int index) {
    _cartitems.add(_shop_items[index]);
    notifyListeners(); // this widget tell as update accur
  }

  // Remove Item To Cart

  void removeItemfromCart(int index) {
    _cartitems.removeAt(index);
    notifyListeners(); // this widget tell as update accur
  }

  /// function calculates Total price
  String CalculateToltal() {
    double totalprice = 0;
    for (int i = 0; i < _cartitems.length; i++) {
      totalprice += double.parse(_cartitems[i][1]);
    }
    return totalprice.toStringAsFixed(2);
  }
}
