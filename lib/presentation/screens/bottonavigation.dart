



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moch_api/presentation/bloc/bottomnavigation/bottom_navigation_cubit.dart';
import 'package:moch_api/presentation/screens/account_screen.dart';
import 'package:moch_api/presentation/screens/cart_screen.dart';
import 'package:moch_api/presentation/screens/home_screen.dart';
import 'package:moch_api/presentation/screens/my_order.dart';

class BottonavigationScreen extends StatefulWidget {
  const BottonavigationScreen({super.key});

  @override
  State<BottonavigationScreen> createState() => _BottonavigationScreenState();
}

class _BottonavigationScreenState extends State<BottonavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            unselectedItemColor: Color.fromRGBO(125, 125, 125, 1), // Set unselected text and icon color to black
            selectedIconTheme: const IconThemeData(
              color: Colors.green, // Set selected icon color to green
            ),
            selectedItemColor:  Color.fromRGBO(125, 125, 125, 1), // Color applies to selected icon only
            selectedLabelStyle: const TextStyle(
               fontWeight: FontWeight.w700,
              fontSize: 14,
              
              
                fontFamily: 'Quicksand',
              color: Color.fromRGBO(125, 125, 125, 1), // Ensure selected text stays black
            ),
            unselectedLabelStyle: const TextStyle(
              color: Color.fromRGBO(125, 125, 125, 1), 
              fontWeight: FontWeight.w500,
              fontSize: 14,
              
              
                fontFamily: 'Quicksand',
              
              
              // Ensure unselected text stays black
            ),
            showUnselectedLabels: true, // Always show text for all items
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_work_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_travel),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.online_prediction_rounded),
                label: 'My orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Account',
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<BottomNavigationCubit>(context)
                    .getNavBarItem(NavbarItem.HomeScreen);
              } else if (index == 1) {
                BlocProvider.of<BottomNavigationCubit>(context)
                    .getNavBarItem(NavbarItem.CartScreen);
              } else if (index == 2) {
                BlocProvider.of<BottomNavigationCubit>(context)
                    .getNavBarItem(NavbarItem.MyOrder_Screen);
              } else if (index == 3) {
                BlocProvider.of<BottomNavigationCubit>(context)
                    .getNavBarItem(NavbarItem.AccountScreen);
              }
            },
          );
        },
      ),
      body: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
        builder: (context, state) {
          if (state.navbarItem == NavbarItem.HomeScreen) {
            return const HomeScreen();
          } else if (state.navbarItem == NavbarItem.CartScreen) {
            return const CartScreen();
          } else if (state.navbarItem == NavbarItem.MyOrder_Screen) {
            return const MyOrder_Screen();
          } else if (state.navbarItem == NavbarItem.AccountScreen) {
            return const AccountScreen();
          }
          return Container();
        },
      ),
    );
  }
}
