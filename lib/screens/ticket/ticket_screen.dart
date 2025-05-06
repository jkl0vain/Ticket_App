import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/media.dart';
import 'package:ticket_app_223846/base/res/styles/app_style.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/app_column_text_layout.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/ticket_view.dart';
import 'package:ticket_app_223846/base/utils/all_jsn.dart';
import 'package:ticket_app_223846/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app_223846/screens/ticket/widgets/ticket_positioned_circle.dart';



class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex=0;

  @override
  void didChangeDependencies() {
    if(ModalRoute.of(context)!.settings.arguments!=null){
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"];
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text("Tickets"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            children: [
              //SizedBox(height: 40,),
              //Text("Tickets", style: AppStyles.headLineStyle1,),
              //SizedBox(height: 20,),
              AppTicketTabs(
                firstTab: "Upcoming",
                secondTab: "Previous",
              ),
              const SizedBox(height: 20,),
              //white ticket
              Container(
                padding: EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[ticketIndex], isColor:true,),
              ),
              SizedBox(height: 1,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB" ,
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                    
                        ),
                        AppColumnTextLayout(
                          topText: "5221 36869",
                          bottomText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    AppLayoutBuilderWidget(randomDivider: 15, width: 5, isColor: false,),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "4841 0205044357 ",
                          bottomText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "B46859",
                          bottomText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    AppLayoutBuilderWidget(randomDivider: 15, width: 5, isColor: false,),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(AppMedia.visaCard, scale: 11,),
                                Text("*** 2118", style: AppStyles.headLineStyle3,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Payment method", style: AppStyles.headLineStyle4,),
                          ],
                        ),
                        AppColumnTextLayout(
                          topText: "\$249.99",
                          bottomText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1,),
              //bottom of the ticket section
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                        data: 'https://dbestech.com',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              //colorful ticket
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(ticket: ticketList[ticketIndex], isColor: null,),
              ),
            ],
          ),
          TicketPositionedCircle(pos: true,),
          TicketPositionedCircle(pos: null,),

        ],
      ),
    );
  }
}