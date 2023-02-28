import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

Widget bottomNavigation() {
  return BottomNavigationBar(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.calendar_month,
          color: Colors.black,
        ),
        label: "Booking",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.money,
          color: Colors.black,
        ),
        label: "Earning",
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.people,
            color: Colors.black,
          ),
          label: "Customers"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.fireplace_outlined,
            color: Colors.black,
          ),
          label: "Create Puja"),
    ],
    type: BottomNavigationBarType.shifting,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black,
  );
}
