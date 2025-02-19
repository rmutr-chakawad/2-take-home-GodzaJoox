import 'package:flutter/material.dart';
import 'package:product_firestore_app/models/product_model.dart';
import 'package:product_firestore_app/widgets/product_form.dart';

// ignore: must_be_immutable
class ProductItem extends StatelessWidget {
  ProductModel product;
  ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showModalBottomSheet(
          context: context, 
          builder: (context) => ProductForm(product: product));
      },
      child: ListTile(
        leading: Text(
          product.productName,
          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold),
          ),
        title: Text(
          product.price.toStringAsFixed(2),
          textAlign: TextAlign.right,
          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold),
          ),
        trailing: IconButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
              builder: (context) => ProductForm(product: product));
          }, 
          icon: const Icon(Icons.chevron_right,color: Color.fromARGB(255, 0, 0, 0 ),)),
      ),
    );
  }
}