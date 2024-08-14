import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        tileColor: Colors.white,
        leading: CachedNetworkImage(
          imageUrl: widget.shoe.imgPath,
        ),
        title: Text(
          widget.shoe.name,
          style: GoogleFonts.roboto(fontSize: 16),
        ),
        subtitle: Text(
          widget.shoe.price,
          style: GoogleFonts.roboto(fontSize: 14),
        ),
        trailing: IconButton(
            onPressed: removItemFromCart,
            icon: Icon(
              Icons.delete,
              color: Colors.grey.shade400,
            )),
      ),
    );
  }
}
