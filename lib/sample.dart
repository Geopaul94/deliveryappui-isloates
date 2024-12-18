import 'package:carousel_nerdzlab/carousel_nerdzlab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moch_api/main.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          width: .765.sw,
          height: .200.sh,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromRGBO(38, 38, 38, 1)),
          child: Stack(
            children: [
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/vegPhoto.png',
                    height: .190.sh,
                  )),
              const Positioned(
                left: 20,
                top: 30,
                child: CustomText(
                  text: 'Customer favourite \ntop supermarkets',
                  fontWeight: FontWeight.w600,
                  fontSize: 21,
                  color: Color.fromRGBO(242, 242, 242, 1),
                  fontFamily: 'Poppins',
                ),
              ),
              const Positioned(left: 20,
              top: 100,
                child: Row(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}



























