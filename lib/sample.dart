import 'package:carousel_nerdzlab/carousel_nerdzlab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/utilities/constants/constants.dart';
import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: PageView.builder(
            itemCount: 2,
            controller: PageController(viewportFraction: 0.82),
            itemBuilder: (context, index) {
              return Container(
                height: 88,
                width: 284,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5), // Radius of 5
                      child: Image.asset(
                        'assets/TLD6iCOlyb0.png',
                        fit: BoxFit.cover, // Ensure the image covers its container
                      ),
                    ),
                    SizedBox(width: 10), // Replacement for w10
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Mithas Bhandar',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black, // Replace with the actual color
                        ),
                        CustomText(
                          text: 'Sweets, North Indian',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.black, // Replace with the actual color
                        ),
                        CustomText(
                          text: '(store location) | 6.4 kms',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.black, // Replace with the actual color
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            CustomText(
                              text: '4.1 | 45 mins',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black, // Replace with the actual color
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
