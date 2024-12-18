import 'package:flutter/material.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class ReferandEarn extends StatelessWidget {
  const ReferandEarn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(41, 209, 119, 1),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 20,
            left: 32,
            child: CustomText(
              text: 'Refer & Earn',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
          ),
          Positioned(
            top: 50,
            left: 12,
            child: Row(
              children: [
                const CustomText(
                  text: 'Invite your friends & earn ',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
                const CustomText(
                  text: '15% off',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
                w10,
                Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward,
                      size: 12,
                      color: Color.fromRGBO(41, 209, 119, 1),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              right: 15, bottom: 10, child: Image.asset('assets/giftbox.png'))
        ],
      ),
    );
  }
}
