import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';

class TrackDetails extends StatefulWidget {
  const TrackDetails({super.key});

  @override
  State<TrackDetails> createState() => _TrackDetailsState();
}

class _TrackDetailsState extends State<TrackDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60.0,
            ),
            Row(
              children: [
                const Gap(25),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.7,
                          color: const Color.fromRGBO(78, 81, 86, 100),
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Color.fromRGBO(30, 73, 57, 100),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(50),
                Center(
                  child: Text(
                    'Order No.123485665',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: OrderTrackerZen(
                tracker_data: [
                  TrackerData(
                    title: "Order Placed",
                    date: "Sat, 8 Apr '23",
                    tracker_details: [
                      TrackerDetails(
                        title: "Your order was placed on YooKatale",
                        datetime: "Sat, 8 Apr '22 - 17:17",
                      ),
                    ],
                  ),
                  TrackerData(
                    title: "Order Shipped",
                    date: "Sat, 8 Apr '23",
                    tracker_details: [
                      TrackerDetails(
                        title: "Your order was shipped with YooKatale Courier",
                        datetime: "Sat, 8 Apr '22 - 17:50",
                      ),
                    ],
                  ),
                  TrackerData(
                    title: "Order Delivered",
                    date: "Sat,8 Apr '23",
                    tracker_details: [
                      TrackerDetails(
                        title: "You received your order, by YooKatale Courier",
                        datetime: "Sat, 8 Apr '23 - 17:51",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
