import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Journey Run',
      price: '8495.00',
      imgPath:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/f0dd7eae-8619-47e7-8d76-e5c3a61ff069/NIKE+JOURNEY+RUN.png',
      description: "Men's Road Running Shoes",
    ),
    Shoe(
      name: 'Nike Pegasus 41',
      price: '11 895.00',
      imgPath:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/63c4596a-ca9a-4a56-82f3-0387903ed5f1/AIR+ZOOM+PEGASUS+41.png',
      description: "Men's Road Running Shoes",
    ),
    Shoe(
      name: 'Nike InfinityRN 4 Blueprint',
      price: '14 995.00',
      imgPath:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/4d17327e-1d4d-43c7-8922-3ffc0ae0d495/NIKE+INFINITYRN+4+FP.png',
      description: "Men's Road Running Shoes",
    ),
    Shoe(
      name: 'Nike Juniper Trail 2 GORE-TEX',
      price: '10 295.00',
      imgPath:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ef8a5507-e876-4c8b-af4a-684bdd314a23/NIKE+JUNIPER+TRAIL+2+GTX+V2.png',
      description: "Men's Waterproof Trail-Running Shoes",
    ),
    Shoe(
      name: 'Nike Vaporfly 3',
      price: '20 695.00',
      imgPath:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/49f0723a-abfe-4e31-b5a5-26c09ee0afe9/NIKE+ZOOMX+VAPORFLY+NEXT%25+3.png',
      description: "Men's Road Racing Shoes",
    ),
  ];

  // list of shoes in users cart

  List<Shoe> userCart = [];

  // get list of shoes for sale
  List getShoeShop() {
    return shoeShop;
  }

  // get a list of shoes in user's cart
  List getUserCart() {
    return userCart;
  }

  // add shoe to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove shoe from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
