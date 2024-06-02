import 'package:flutter/material.dart';
import 'package:boarding_house_management/fetures/bookings/screens/bookings_page.dart';
import 'package:boarding_house_management/fetures/dashboard/screens/dashboard_page.dart';
import 'package:boarding_house_management/fetures/residents/screens/residents_page.dart';
import 'package:boarding_house_management/fetures/rooms/screens/rooms_page.dart';

class NavBarController with ChangeNotifier {
  int selectedIndex = 0;
  List<Widget> ownerPages = [
    const DashBoardPage(),
    const OwnerRoomsPage(),
    const BookingsPage(),
    const ResidentsPage(),
  ];

  void onNavTap(index) {
    selectedIndex = index;
    notifyListeners();
  }
}
