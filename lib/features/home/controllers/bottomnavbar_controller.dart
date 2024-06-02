import 'package:flutter/material.dart';
import 'package:boarding_house_management/features/bookings/screens/bookings_page.dart';
import 'package:boarding_house_management/features/dashboard/screens/dashboard_page.dart';
import 'package:boarding_house_management/features/residents/screens/residents_page.dart';
import 'package:boarding_house_management/features/rooms/screens/rooms_page.dart';

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
