import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Payments/payments.dart';
import 'enum/time.dart';

class ChooseDeliveryTime extends StatefulWidget {
  const ChooseDeliveryTime({super.key});

  @override
  State<ChooseDeliveryTime> createState() => _ChooseDeliveryTimeState();
}

class _ChooseDeliveryTimeState extends State<ChooseDeliveryTime> {
  DeliveryAddressTime _addressTime = DeliveryAddressTime.express;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
        child: SingleChildScrollView(
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
                const Gap(30),
                Center(
                  child: Text(
                    'Select a Delivery Slot',
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
            const Gap(30),
            ListTile(
              title: Text(
                'Express Delivery',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              subtitle: Text(
                'Delivery within 40 mins',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              leading: Radio<DeliveryAddressTime>(
                value: DeliveryAddressTime.express,
                groupValue: _addressTime,
                activeColor: Colors.green.shade800,
                onChanged: (DeliveryAddressTime? value) {
                  setState(() {
                    _addressTime = value!;
                  });
                },
              ),
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
              thickness: 0.5,
              color: Colors.black,
            ),
            const Gap(10),
            ListTile(
              title: Text(
                'Standard Delivery',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              subtitle: Text(
                '2-3 days delivery',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              leading: Radio<DeliveryAddressTime>(
                value: DeliveryAddressTime.standard,
                groupValue: _addressTime,
                activeColor: Colors.green.shade800,
                onChanged: (DeliveryAddressTime? value) {
                  setState(() {
                    _addressTime = value!;
                  });
                },
              ),
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
              thickness: 0.5,
              color: Colors.black,
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Gap(20),
                    Row(
                      children: [
                        const Gap(20),
                        Text(
                          'Pick up Times Everyday',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Gap(30),
                    Row(
                      children: [
                        const Gap(20),
                        const Icon(Icons.check_circle_outline,
                            color: Colors.black54),
                        const Gap(10),
                        Text(
                          '12:00AM - 2:00PM',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 30,
                      endIndent: 30,
                      thickness: 0.5,
                      color: Colors.black54,
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        const Gap(20),
                        const Icon(Icons.check_circle_outline,
                            color: Colors.black54),
                        const Gap(10),
                        Text(
                          '2:00PM - 4:00PM',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 30,
                      endIndent: 30,
                      thickness: 0.5,
                      color: Colors.black54,
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        const Gap(20),
                        const Icon(Icons.check_circle_outline,
                            color: Colors.black54),
                        const Gap(10),
                        Text(
                          '4:00PM - 6:00PM',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 30,
                      endIndent: 30,
                      thickness: 0.5,
                      color: Colors.black54,
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        const Gap(20),
                        const Icon(
                          Icons.check_circle_outline,
                          color: Colors.black54,
                        ),
                        const Gap(10),
                        Text(
                          '6:00PM - 8:00PM',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 30,
                      endIndent: 30,
                      thickness: 0.5,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ),
            const Gap(50),
            MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChoosePayments(),
                      ));
                },
                color: Colors.green.shade800,
                height: 50.0,
                minWidth: 300,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Text(
                  'Proceed to pay',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
