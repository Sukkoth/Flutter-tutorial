import 'package:first_app/models/product.dart';
import 'package:first_app/widgets/product_details/detail_buttons.dart';
import 'package:first_app/widgets/product_details/detail_header.dart';
import 'package:first_app/widgets/product_details/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  final Product item;
  const DetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductDetailImage(imageUrl: item.imageUrl),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ProductDetailHeader(title: item.title, price: item.price),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    item.description!,
                    style: GoogleFonts.poppins(
                        fontSize: 15, color: Colors.grey.shade500),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const ProductDetailButtons()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
