import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier{
  //List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak', 
      price: 'LKR 2560.99', 
      description: 'The Nike Zoom Freak 2 is built to harness the power and speed of Giannis.',
      imagepath: 'assets/shoe1.jfif',
    ),
    Shoe(
      name: 'Air Jordan', 
      price: 'LKR 5656.99', 
      description: 'Air Jordan is a brand of basketball shoes, athletic, casual, and style clothing produced by Nike. ',
      imagepath: 'assets/shoe2.jfif',
    ),
    Shoe(
      name: 'KD Treys', 
      price: 'LKR 1000.99', 
      description: 'The KD Trey 5 VIII is a shoe that\'s built to KD\'s specs, with a design that\'s lightweight, low-cut, and locked in.',
      imagepath: 'assets/shoe3.jfif',
    ),
    Shoe(
      name: 'Kyrie 7', 
      price: 'LKR 8002.99', 
      description: 'Kyrie Irving\'s ability to stop, go and cut while handling the ball helps him stay steps ahead of the opposition. ',
      imagepath: 'assets/shoe4.jfif',
    ),
  ];

  //list of items in user cart
  List<Shoe> cart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getCart() {
    return cart;
  }

  //add items to cart
  void addToCart(Shoe shoe) {
    cart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeFromCart(Shoe shoe) {
    cart.remove(shoe);
    notifyListeners();
  }
}
