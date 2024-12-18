
import 'package:carousel_nerdzlab/carousel_nerdzlab.dart';
import 'package:flutter/material.dart';

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