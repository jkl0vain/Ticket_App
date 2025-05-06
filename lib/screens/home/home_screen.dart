import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/styles/app_style.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/app_double_text.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/heading_text.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/ticket_view.dart';
import 'package:ticket_app_223846/base/utils/all_jsn.dart';
import 'package:ticket_app_223846/base/utils/app_routes.dart';
import 'package:ticket_app_223846/screens/home/widgets/hotel.dart';

import '../../base/res/media.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(         //to make it scrollable
        children: [
          const SizedBox(height:40),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ), //to make a space
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, //horizontal
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headLineStyle3
                        ),
                        const SizedBox(height: 5), //gap between

                        HeadingText(text: "Book Tickets", isColor: false),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(AppMedia.logo))
                      ),
                    ),
                  ],
                ),
                const SizedBox (height:25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                   decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD),
                   ),
                  child: const Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205) ),
                      Text("Search")],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Upcoming Flight',
                  smallText: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child:Row(
                      children: ticketList.take(3).map((singleTicket) => GestureDetector(
                        onTap: (){
                          var index = ticketList.indexOf(singleTicket);
                          Navigator.pushNamed(context, AppRoutes.ticketScreen,
                              arguments: {"index":index});
                        },
                          child: TicketView(ticket:singleTicket))
                      ).toList(),
                    ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
               func: () => Navigator.pushNamed(context, AppRoutes.allTickets),

                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList.take(2).map((singleHotel) => GestureDetector(
                          onTap: (){
                            var index = hotelList.indexOf(singleHotel);
                            Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
                              "index": index
                            }
                            );
                          },
                          child: Hotel(hotel:singleHotel))
                      ).toList(),
                    ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}