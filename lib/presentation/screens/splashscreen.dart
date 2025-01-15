import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moch_api/presentation/screens/bottonavigation.dart';
import 'package:moch_api/utilities/constants/constants.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    navigate(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 181, 12),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/Deliverylotti.json',
                height: 400, width: 300),
       
       
       TextAnimator(
  'DeliverIT',
  atRestEffect: WidgetRestingEffects.pulse(effectStrength: 0.6),
  style: const TextStyle(
    color: Colors.white,
    fontFamily: 'Robberto',
    fontWeight: FontWeight.bold,
    fontSize: 40,
  ),
  incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
    blur: const Offset(0, 20), 
    scale: 2,
  ),
  textAlign: TextAlign.center,
)

          ],
        ),
      ),
    );
  }

  Future<void> navigate(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottonavigationScreen()),
      );
    });
  }
}
