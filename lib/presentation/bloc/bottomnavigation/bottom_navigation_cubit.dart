import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moch_api/utilities/constants/bottomnavenm.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit()
      : super(BottomNavigationInitial(NavbarItem.HomeScreen, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.HomeScreen:
        emit(BottomNavigationInitial(NavbarItem.HomeScreen, 0));
        break;
      case NavbarItem.CartScreen:
        emit(BottomNavigationInitial(NavbarItem.CartScreen, 1));
        break;

      case NavbarItem.MyOrder_Screen:
        emit(BottomNavigationInitial(NavbarItem.MyOrder_Screen, 2));
        break;
      case NavbarItem.AccountScreen:
        emit(BottomNavigationInitial(NavbarItem.AccountScreen, 3));
        break;
    }
  }
}
