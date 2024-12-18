

import 'package:carousel_nerdzlab/carousel_nerdzlab.dart';
import 'package:flutter/material.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class CustomefavouriteExplore extends StatelessWidget {
  const CustomefavouriteExplore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 900,
      height: 170,
      child: CenteredPageView.builder(
        itemCount: 2,
        controller: PageController(viewportFraction: .88),
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
            child: Container(
              width: 900,
              height: 170,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(38, 38, 38, 1)),
              child: Stack(
                children: [
                  Positioned(
                      right: -5,
                      bottom: -5,
                      child: Image.asset(
                        'assets/vegPhoto.png',
                        height: 170,
                      )),
                  const Positioned(
                    left: 30,
                    top: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Customer favourite \ntop supermarkets',
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Color.fromRGBO(242, 242, 242, 1),
                          fontFamily: 'Poppins',
                        ),
                        h15,
                        Row(
                          children: [
                            CustomText(
                              text: 'Explore',
                              color: Color.fromRGBO(234, 126, 0, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color.fromRGBO(234, 126, 0, 1),
                              size: 18,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}