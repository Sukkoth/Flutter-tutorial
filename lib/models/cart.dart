import 'package:fashion/models/product.dart';
import 'package:uuid/v4.dart';

const generateId = UuidV4();

class Cart {
  String id;
  bool addToCheckOut;
  Product product;
  int quantity;

  Cart({required this.product, this.addToCheckOut = false, this.quantity = 1})
      : id = generateId.generate();
}
