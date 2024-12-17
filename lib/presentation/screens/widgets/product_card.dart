
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String text;

  const ProductCard({Key? key, required this.imagePath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, 
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 80, 
  
            fit: BoxFit.cover,
          ),
       const SizedBox(height: 5), 
          Flexible( 
            child: Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 2, 
              overflow: TextOverflow.ellipsis, 
              style: const TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w500,
                fontSize: 16, 
                color: Color.fromRGBO(50, 50, 50, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
