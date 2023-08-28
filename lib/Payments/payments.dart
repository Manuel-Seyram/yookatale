import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../utils/confirm_splash.dart';
import 'enum/payments.dart';

class ChoosePayments extends StatefulWidget {
  const ChoosePayments({super.key});

  @override
  State<ChoosePayments> createState() => _ChoosePaymentsState();
}

class _ChoosePaymentsState extends State<ChoosePayments> {
  Payments _address = Payments.card;
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
                    'Select a Payment method',
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
              child: Card(
                elevation: 5,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(
                    'Credit Card/ Debit Card',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  leading: Radio<Payments>(
                    value: Payments.card,
                    groupValue: _address,
                    activeColor: Colors.green.shade800,
                    onChanged: (Payments? value) {
                      setState(() {
                        _address = value!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                elevation: 5,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(
                    'MTN MoMo',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  leading: Radio<Payments>(
                    value: Payments.mtn,
                    groupValue: _address,
                    activeColor: Colors.green.shade800,
                    onChanged: (Payments? value) {
                      setState(() {
                        _address = value!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                elevation: 5,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(
                    'Airtel Money',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  leading: Radio<Payments>(
                    value: Payments.airtel,
                    groupValue: _address,
                    activeColor: Colors.green.shade800,
                    onChanged: (Payments? value) {
                      setState(() {
                        _address = value!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                elevation: 5,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(
                    'Cash on delivery',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  leading: Radio<Payments>(
                    value: Payments.cash,
                    groupValue: _address,
                    activeColor: Colors.green.shade800,
                    onChanged: (Payments? value) {
                      setState(() {
                        _address = value!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                elevation: 5,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(
                    'Wallet',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  leading: Radio<Payments>(
                    value: Payments.wallet,
                    groupValue: _address,
                    activeColor: Colors.green.shade800,
                    onChanged: (Payments? value) {
                      setState(() {
                        _address = value!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const Gap(200),
            MaterialButton(
                onPressed: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const ConfirmSplash(),
                    withNavBar: false, 
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                color: Colors.green.shade800,
                height: 50.0,
                minWidth: 300,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Text(
                  'Place order & pay',
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
