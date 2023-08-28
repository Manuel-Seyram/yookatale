import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'delivery_time.dart';
import 'enum/address.dart';

class ChooseDelivery extends StatefulWidget {
  const ChooseDelivery({super.key});

  @override
  State<ChooseDelivery> createState() => _ChooseDeliveryState();
}

class _ChooseDeliveryState extends State<ChooseDelivery> {
  DeliveryAddress _address = DeliveryAddress.recently;
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
                    'Select a Delivery Address',
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
                'Recently Used',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              subtitle: Text(
                '86,B/ Ministers Village',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              leading: Radio<DeliveryAddress>(
                value: DeliveryAddress.recently,
                groupValue: _address,
                activeColor: Colors.green.shade800,
                onChanged: (DeliveryAddress? value) {
                  setState(() {
                    _address = value!;
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
                'Home',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              subtitle: Text(
                '86,B/ Ministers Village',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              leading: Radio<DeliveryAddress>(
                value: DeliveryAddress.home,
                groupValue: _address,
                activeColor: Colors.green.shade800,
                onChanged: (DeliveryAddress? value) {
                  setState(() {
                    _address = value!;
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
                'Work',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              subtitle: Text(
                '86,B/ Ministers Village',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              leading: Radio<DeliveryAddress>(
                value: DeliveryAddress.work,
                groupValue: _address,
                activeColor: Colors.green.shade800,
                onChanged: (DeliveryAddress? value) {
                  setState(() {
                    _address = value!;
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
                'Pick up',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              subtitle: Text(
                'YooKatale office/ kampala, apple street',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              leading: Radio<DeliveryAddress>(
                value: DeliveryAddress.pickup,
                groupValue: _address,
                activeColor: Colors.green.shade800,
                onChanged: (DeliveryAddress? value) {
                  setState(() {
                    _address = value!;
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
            Row(
              children: [
                const Gap(225),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Add new address',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
            const Gap(150),
            MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChooseDeliveryTime(),
                      ));
                },
                color: Colors.green.shade800,
                height: 50.0,
                minWidth: 300,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Text(
                  'Continue',
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
