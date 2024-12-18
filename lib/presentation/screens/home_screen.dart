import 'package:carousel_nerdzlab/carousel_nerdzlab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moch_api/presentation/screens/notificaton_screen.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/utilities/constants/constants.dart';
import 'package:moch_api/utilities/constants/image_list.dart';
import 'package:moch_api/presentation/screens/widgets/product_card.dart';

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
            child: const Row(
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Column(
              children: [
                ReferandEarn(),
          
          h10,
          
                Row(
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
          const Positioned(top: 20,left: 32,
            child: CustomText(
              text: 'Refer & Earn',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
          ),
          Positioned(top: 50,left: 12,
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
    
    
    
    
    
    
    
                ),w10,
                Container(height: 15,width: 15,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
             
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward,size: 12,
                      color: Color.fromRGBO(41, 209, 119, 1),
                    ),
                  ),
                )
              ],
            ),
          ),
    
    
          Positioned( right: 15,bottom: 10,
            child: Image.asset('assets/giftbox.png'))
        ],
      ),
    );
  }
}

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
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Customer favourite \ntop supermarkets',
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Color.fromRGBO(242, 242, 242, 1),
                          fontFamily: 'Poppins',
                        ),h15,
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

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 764,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: CenteredPageView.builder(
        itemCount: 2,
        controller: PageController(viewportFraction: 0.92),
        showIndicator: false,
        itemBuilder: (context, index) {
          Color containerColor = (index == 0)
              ? const Color.fromRGBO(6, 194, 94, 1)
              : const Color.fromRGBO(104, 91, 203, 1);

          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Stack(
              children: [
                // Content (Text and Button)
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 40, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'DISCOUNT \n25% ALL \nFRUITS',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      const SizedBox(height: 10), // Adding some space
                      Container(
                        width: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 137, 24, 1),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Center(
                          child: Text(
                            'CHECK NOW',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Image at the bottom-right
                Positioned(
                  bottom: 0,
                  // Align image to the bottom
                  right: 5, // Align image to the right
                  child: Image.asset(
                    'assets/Figma_Resources_2-removebg-preview 1.png',
                    height: 175, // Adjust image height as needed
                    //    width: 165, // Adjust image width as needed
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

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
