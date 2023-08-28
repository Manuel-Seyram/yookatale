import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Faqs/faqs.dart';
import '../Terms and conditions/terms.dart';
import '../Track delivery/track_delivery.dart';

class ProfileHomeOptions2 extends StatelessWidget {
  const ProfileHomeOptions2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Faqs(),
                ));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 50.0,
              width: 350.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(children: [
                const Gap(10),
                Icon(
                  Icons.question_answer_rounded,
                  size: 25,
                  color: Colors.green.shade800,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('FAQs',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  width: 215.0,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black12,
                  size: 20.0,
                )
              ]),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TermsCondition(),
                ));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 50.0,
              width: 350.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(children: [
                const Gap(10),
                Icon(
                  Icons.dynamic_feed_outlined,
                  size: 25,
                  color: Colors.green.shade800,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('Terms and Conditions',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  width: 75.0,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black12,
                  size: 20.0,
                )
              ]),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 50.0,
              width: 350.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(children: [
                const Gap(10),
                Icon(
                  Icons.list_alt_rounded,
                  size: 25,
                  color: Colors.green.shade800,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('Invoices',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  width: 180.0,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black12,
                  size: 20.0,
                )
              ]),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TrackDelivery(),
                ));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 50.0,
              width: 350.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(children: [
                const Gap(10),
                Icon(
                  Icons.delivery_dining_rounded,
                  size: 25,
                  color: Colors.green.shade800,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('Track Delivery',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  width: 130.0,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black12,
                  size: 20.0,
                )
              ]),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
