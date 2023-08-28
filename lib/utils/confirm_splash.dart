import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Nav Bar/bottom_navigation.dart';
import '../Profile account/Track delivery/track_details.dart';
import 'enum/availability.dart';

class ConfirmSplash extends StatefulWidget {
  const ConfirmSplash({super.key});

  @override
  State<ConfirmSplash> createState() => _ConfirmSplashState();
}

class _ConfirmSplashState extends State<ConfirmSplash> {
  final InAppReview _inAppReview = InAppReview.instance;

  //String _appStoreId = '';
  //String _microsoftStoreId = '';
  // ignore: unused_field
  Availability _availability = Availability.loading;

  @override
  void initState() {
    super.initState();

    (<T>(T? o) => o!)(WidgetsBinding.instance).addPostFrameCallback((_) async {
      try {
        final isAvailable = await _inAppReview.isAvailable();

        setState(() {
          // This plugin cannot be tested on Android by installing your app
          // locally. See https://github.com/britannio/in_app_review#testing for
          // more information.
          _availability = isAvailable && !Platform.isAndroid
              ? Availability.available
              : Availability.unavailable;
        });
      } catch (_) {
        setState(() => _availability = Availability.unavailable);
      }
    });
  }

  //void _setAppStoreId(String id) => _appStoreId = id;

  //void _setMicrosoftStoreId(String id) => _microsoftStoreId = id;

  Future<void> _requestReview() => _inAppReview.requestReview();

  //Future<void> _openStoreListing() => _inAppReview.openStoreListing(
  //appStoreId: _appStoreId,
  //microsoftStoreId: _microsoftStoreId,
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
        child: Column(
          children: [
            const Gap(150),
            Center(
              child: Image.asset(
                'assets/successful.png',
                height: 250,
                width: 250,
              ),
            ),
            const Gap(20),
            Center(
              child: Text(
                'Order Placed Successfully',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.green.shade800,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Gap(20),
            MaterialButton(
                onPressed: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const TrackDetails(),
                    withNavBar: true,
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
                  'Track order',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                )),
            const Gap(20),
            MaterialButton(
                onPressed: () {
                  popup(context);
                },
                color: Colors.green.shade800,
                height: 50.0,
                minWidth: 300,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Text(
                  'Continue Shopping',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                )),
            const Gap(10),
          ],
        ),
      ),
    );
  }

  void popup(BuildContext context) {
    AwesomeDialog(
      context: context,
      //dialogType: DialogType.question,
      customHeader: Image.asset(
        'assets/star.png',
        height: 50,
        width: 50,
      ),
      dialogBackgroundColor: Colors.white,
      btnOkText: 'Rate us',
      animType: AnimType.rightSlide,
      title: 'Rate Us',
      desc: 'Hey. do you enjoy using our app. Take a moment and rate us!',
      btnCancelOnPress: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const Navbar(),
          withNavBar: true,
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      },
      btnOkOnPress: () {
        _requestReview;
      },
    ).show();
  }
}
