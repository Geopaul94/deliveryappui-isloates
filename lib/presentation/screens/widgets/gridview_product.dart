
import 'package:flutter/material.dart';
import 'package:moch_api/presentation/screens/widgets/product_card.dart';
import 'package:moch_api/utilities/constants/image_list.dart';

class gridviewproduct extends StatelessWidget {
  const gridviewproduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: productimages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            mainAxisExtent: 130,
          ),
          itemBuilder: (context, index) {
            return ProductCard(
              imagePath: productimages[index]['image']!,
              text: productimages[index]['heading']!,
            );
          },
        ),
      ),
    );
  }
}
