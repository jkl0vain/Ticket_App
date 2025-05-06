import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/styles/app_style.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/app_double_text.dart';
import 'package:ticket_app_223846/base/utils/app_routes.dart';
import 'package:ticket_app_223846/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app_223846/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app_223846/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app_223846/screens/search/widgets/ticket_promotion.dart';



class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text("What are\nyou looking for", style: AppStyles.headLineStyle1.copyWith(fontSize: 35),),
          SizedBox(height: 20,),
          AppTicketTabs(
            firstTab: "All Tickets",
            secondTab: "Hotels",
          ),
          SizedBox(height: 25,),
          AppTextIcon(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const SizedBox(height: 20,),
          AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 25,),
          FindTickets(),
          const SizedBox(height: 14,),
          AppDoubleText(
            bigText: 'Upcoming Flight',
            smallText: 'View all',
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(height: 15,),
          TicketPromotion(),
        ],
      ),
    );
  }
}