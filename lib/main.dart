import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ticket_app_223846/base/bottom_nav_bar.dart';
import 'package:ticket_app_223846/base/utils/app_routes.dart';
import 'package:ticket_app_223846/screens/all_tickets.dart';
import 'package:ticket_app_223846/screens/home/all_hotels.dart';
import 'package:ticket_app_223846/screens/hotel_details.dart';
import 'package:ticket_app_223846/screens/search/search_screen.dart';
import 'package:ticket_app_223846/screens/ticket/ticket_screen.dart';

void main() {

  runApp(const MyApp());
}

//*******NOTES********

/*!!Every class extended from Stateless or Stateful = is a widget!!
//Every widget class must OVERRIDE BUILD METHOD 

//STATELESS : -doesn't have any state, dont have living condition (dead) 
              - tak boleh nak print benda pun
              -cannot use setState function
            
//STATEFUL : - Do have a state (alive)
             - boleh print
             -boleh guna setState ( we can see the changes )

//Scaffold : Hold everything together

              */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( //must have to holding screen
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => AllTickets(),
        AppRoutes.ticketScreen:(context) => const TicketScreen(),
        AppRoutes.allHotels:(context) => const AllHotels(),
        AppRoutes.hotelDetail :(context) => const HotelDetail(),
      },
    );
  }
}


