import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/all_products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    // Attempt to get the ModalRoute and its settings
    final route = ModalRoute.of(context);
    if (route == null || route.settings.arguments == null) {
      // Return an error message if the route or arguments are not available
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("No product found or incorrect navigation")),
      );
    }
    // Safely attempt to cast the arguments as String
    final String? productId = route.settings.arguments as String;
    if (productId == null) {
      // Return an error message if the argument is not a string or is missing
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Invalid or missing product ID")),
      );
    }

    final product = Provider.of<Products>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.network(
              "${product.imageUrl}",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "${product.title}",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "\$${product.price}",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "${product.description}",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
