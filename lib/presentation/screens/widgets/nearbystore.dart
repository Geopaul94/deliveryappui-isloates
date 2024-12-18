
import 'package:flutter/material.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';

class nearbystores extends StatelessWidget {
  const nearbystores({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomText(
          text: 'Nearby stores',
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(50, 50, 50, 1),
          fontSize: 22,
        ),
        Spacer(),
        CustomText(
          text: 'See all',
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(6, 194, 94, 1),
          fontSize: 16,
        ),
      ],
    );
  }
}
