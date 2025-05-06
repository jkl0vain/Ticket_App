import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app_223846/screens/profile/profile.dart';
import 'package:ticket_app_223846/screens/search/search_screen.dart';
import '../controller/bottom_nav_controller.dart';
import '../screens/home/home_screen.dart';
import '../screens/ticket/ticket_screen.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({super.key});
   //dependencies injection
   final BottomNavController controller = Get.put(BottomNavController());

  final appScreen=[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  //change the index for BottomNavBar

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
        body: appScreen[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap:controller.onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon (FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),

            BottomNavigationBarItem(icon: Icon (FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),

            BottomNavigationBarItem(icon: Icon (FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Tickets"),

            BottomNavigationBarItem(icon: Icon (FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Profile"),
          ],
        ),
      );
    });
  }
}