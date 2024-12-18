import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moch_api/presentation/screens/notificaton_screen.dart';
import 'package:moch_api/presentation/screens/widgets/custome_favourite_explore.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/presentation/screens/widgets/discount_card.dart';
import 'package:moch_api/presentation/screens/widgets/freshbakers.dart';
import 'package:moch_api/presentation/screens/widgets/gridview_product.dart';
import 'package:moch_api/presentation/screens/widgets/icecreammithas.dart';
import 'package:moch_api/presentation/screens/widgets/referandearn.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          h20,
          heading(),
          h20,
          searchbox(context),
          h20,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'What would you like to do today?',
                  selectionColor: Color.fromRGBO(50, 50, 50, 1),
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ],
            ),
          ),
          const gridviewproduct(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: 'More',
                fontWeight: FontWeight.w700,
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
          h10,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomText(
              text: 'Top picks for you',
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color.fromRGBO(50, 50, 50, 1),
            ),
          ),
          h10,
          const DiscountCard(),
          h10,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CustomText(
                  text: 'Trending',
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
            ),
          ),
          h10,
          const IcecreamMithas(),
          h20,
          const IcecreamMithas(),
          h10,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomText(
              text: 'Craze deals',
              color: textcolor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          h10,
          const CustomefavouriteExplore(),
          h30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const ReferandEarn(),
                h10,
                const Row(
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
                ),
                const freshlyBaker(),
                h20,
                const freshlyBaker(),
                h20,
                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                      color: maincolor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: CustomText(
                      text: 'View all stores',
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
          h100,
        ],
      ))),
    );
  }

  Padding searchbox(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: searchboxcolor,
            ),
            height: .05.sh,
            width: .65.sw,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Search for products/stores',
                    selectionColor: Color.fromRGBO(150, 150, 150, 1),
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    color: maincolor,
                  ),
                ],
              ),
            ),
          ),
          w10,
          GestureDetector(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (_) {
                return NotificatonScreen();
              }));
            },
            child: Image.asset(
              'assets/notification.png',
              width: 30,
              height: 30,
            ),
          ),
          w10,
          Container(width: 10),
          Image.asset(
            'assets/Tag.png',
            width: 30,
            height: 30,
          ),
        ],
      ),
    );
  }

  Padding heading() {
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

