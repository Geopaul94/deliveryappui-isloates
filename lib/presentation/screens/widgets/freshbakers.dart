
import 'package:flutter/material.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class freshlyBaker extends StatelessWidget {
  const freshlyBaker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 383,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/lastphoto.png',
              height: 85,
              width: 75,
              fit: BoxFit.cover,
            ),
          ),
          w15,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: 'Freshly Baker',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: textcolor,
                        ),
                        const CustomText(
                          text: 'Sweets, North Indian',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: textcolor,
                        ),
                        const CustomText(
                          text: 'Site No - 1 | 6.4 kms',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: textcolor,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: const Color.fromRGBO(172, 171, 171, 1),
                          ),
                          height: 18,
                          width: 48,
                          child: const Center(
                            child: CustomText(
                              text: 'Top Store ',
                              color: textcolor,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: textcolor,
                            ),
                            w10,
                            CustomText(
                                text: '4.1',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: textcolor),
                          ],
                        ),
                        CustomText(
                          text: '45 mins',
                          color: Color.fromRGBO(234, 126, 0, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    )
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset('assets/%.png'),
                    w5,
                    const CustomText(
                      text: 'Upto 10% OFF',
                      color: textcolor,
                      fontWeight: FontWeight.w700,
                      fontSize: 11.5,
                    ),
                    w10,
                    Image.asset('assets/box.png'),
                    w5,
                    const CustomText(
                      text: '3400+ items available',
                      color: textcolor,
                      fontWeight: FontWeight.w700,
                      fontSize: 11.5,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
