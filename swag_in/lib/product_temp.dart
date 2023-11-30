import 'package:flutter/material.dart';


class ProductDes extends StatefulWidget {
  const ProductDes({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.category,
  });
  final String title, image, description, category;

  @override
  State<ProductDes> createState() => _ProductDesState();
}

class _ProductDesState extends State<ProductDes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
   
      
        children: [
          Center(
            child: SizedBox(
              height: 450,
              width: 300,
              child: Image.network(
                
                widget.image,
                fit: BoxFit.cover,
              ),
            ),

            
          ),
        ],
      ),
    );
  }
}
