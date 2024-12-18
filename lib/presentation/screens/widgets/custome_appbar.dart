import 'package:flutter/material.dart';
import 'package:moch_api/presentation/screens/widgets/custometext.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class CustomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String appvarname;

  const CustomeAppbar({super.key, required this.appvarname});

  @override
  Widget build(BuildContext context) {
    return AppBar(
  primary: true,
     backgroundColor:Colors.white,
      title: const CustomText(
        text: 'Notifications',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: textcolor,
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            color: maincolor,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
