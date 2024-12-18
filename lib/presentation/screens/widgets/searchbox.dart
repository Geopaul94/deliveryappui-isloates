
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moch_api/presentation/screens/notificaton_screen.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
}
