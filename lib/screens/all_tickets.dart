import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/ticket_view.dart';
import 'package:ticket_app_223846/base/utils/all_jsn.dart';
import 'package:ticket_app_223846/base/utils/app_routes.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //for back
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) =>
                    GestureDetector(
                      onTap: (){
                        var index = ticketList.indexOf(singleTicket);
                        Navigator.pushNamed(context, AppRoutes.ticketScreen,
                            arguments: {"index":index});
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: TicketView(ticket: singleTicket, wholeScreen: true,)),
                    ),)
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}