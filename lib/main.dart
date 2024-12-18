import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moch_api/presentation/bloc/bottomnavigation/bottom_navigation_cubit.dart';
import 'package:moch_api/presentation/screens/bottonavigation.dart';

void main()  {
  
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(392, 802),
        minTextAdapt: true,
        splitScreenMode: true,
        child: BlocProvider(
          create: (context) => BottomNavigationCubit(),
          child: MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: 'Quicksand',
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const BottonavigationScreen()),
        ));
  }
}
