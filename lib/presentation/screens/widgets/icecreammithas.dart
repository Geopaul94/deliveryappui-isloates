
import 'package:carousel_nerdzlab/carousel_nerdzlab.dart';
import 'package:flutter/material.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class IcecreamMithas extends StatelessWidget {
  const IcecreamMithas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      width: 400,
      child: CenteredPageView.builder(
        itemCount: 2,
        controller: PageController(viewportFraction: 0.66),
        showIndicator: false,
        itemBuilder: (context, index) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(
                20,
                0,
                0,
                0,
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'assets/TLD6iCOlyb0.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  w15,
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Mithas Bhandar',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: textcolor,
                      ),
                      CustomText(
                        text: 'Sweets, North Indian',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: textcolor,
                      ),
                      CustomText(
                        text: '(store location) | 6.4 kms',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: textcolor,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: '4.1 | 45 mins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: textcolor,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}

