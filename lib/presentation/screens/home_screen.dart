import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moch_api/presentation/screens/widgets/custome_favourite_explore.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/presentation/screens/widgets/discount_card.dart';
import 'package:moch_api/presentation/screens/widgets/freshbakers.dart';
import 'package:moch_api/presentation/screens/widgets/gridview_product.dart';
import 'package:moch_api/presentation/screens/widgets/heading1.dart';
import 'package:moch_api/presentation/screens/widgets/icecreammithas.dart';
import 'package:moch_api/presentation/screens/widgets/nearbystore.dart';
import 'package:moch_api/presentation/screens/widgets/referandearn.dart';
import 'package:moch_api/presentation/screens/widgets/searchbox.dart';
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
          const HeadingABC(),
          h20,
          const SearchBox(),
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
                const nearbystores(),
                const freshlyBaker(),
                h20,
                const freshlyBaker(),
                h40,
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
          h50,
        ],
      ))),
    );
  }
}
