import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class HeadingABC extends StatelessWidget {
  const HeadingABC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Icon(
            Icons.location_pin,
            color: maincolor,
          ),
          const Text(
            'ABCD, New Delhi',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Transform.rotate(
            angle: 3.14 / -2,
            child: const Icon(
              CupertinoIcons.back,
              color: maincolor,
            ),
          ),
        ],
      ),
    );
  }
}