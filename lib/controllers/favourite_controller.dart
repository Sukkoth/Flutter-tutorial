import 'package:fashion/models/product.dart';
import 'package:get/get.dart';

class FavouriteController extends GetxController {
  final List<Product> _favourites = [];

  //getters
  List<Product> get getFavourites => _favourites;

  //functions
  bool isInFavourites(Product product) {
    return _favourites.contains(product);
  }

  void addToFavourites(Product product) {
    _favourites.add(product);
    update();
  }

  void removeFromFavourites(Product product) {
    _favourites.remove(product);
    update();
  }
}
