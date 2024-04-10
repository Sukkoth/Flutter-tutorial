import 'package:first_app/models/cart.dart';
import 'package:first_app/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final List<Cart> _cartItems = [];

  //getters
  List<Cart> get getCartItems => _cartItems;
  double get getCartTotal {
    double total = 0;
    for (Cart cartItem in _cartItems) {
      total += cartItem.quantity * cartItem.product.price;
    }
    //TODO find a better way to round to 2 digits after decimal
    return double.parse(total.toStringAsFixed(2));
  }

  //functions
  void addToCart(Cart cartItem) {
    _cartItems.add(cartItem);
    update();
  }

  void removeFromCart(String cartId) {
    _cartItems.removeWhere((cartItem) => cartItem.id == cartId);
    update();
  }

  void removeFromCartByProduct(Product product) {
    _cartItems.removeWhere((cartItem) => cartItem.product == product);
    update();
  }

  void incrementQuantity(String id) {
    //get cart item
    int index = _cartItems.indexWhere((item) => item.id == id);
    //increment
    _cartItems[index].quantity++;
    update();
  }

  void decrementQuantity(String id) {
    //get cart item
    int index = _cartItems.indexWhere((item) => item.id == id);
    //increment
    if (_cartItems[index].quantity > 1) {
      _cartItems[index].quantity--;
    }
    update();
  }

  void setAddToCheckout(String id) {
    int index = _cartItems.indexWhere((item) => item.id == id);
    _cartItems[index].addToCheckOut = !_cartItems[index].addToCheckOut;
    update();
  }

  bool isInCart(Product product) {
    Cart? cartItem =
        _cartItems.firstWhereOrNull((cartItem) => cartItem.product == product);
    return cartItem != null;
  }
}
