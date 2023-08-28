import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/option1.dart';
import 'widgets/option2.dart';
import 'widgets/option3.dart';

class ProfileAccount extends StatelessWidget {
  const ProfileAccount({super.key});

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
              const Gap(60),
              Center(
                child: Text(
                  'Profile',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: AdvancedAvatar(
                    name: 'Kofi Baidoo',
                    autoTextSize: true,
                    statusColor: Colors.greenAccent,
                    size: 110,
                    image: AssetImage('assetName'),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(30, 73, 57, 1),
                        shape: BoxShape.circle),
                    animated: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: Text(
                  'Kofi Baidoo',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const ProfileHomeOptions(),
              const SizedBox(
                height: 10.0,
              ),
              const ProfileHomeOptions2(),
              const ProfileHomeOptions3(),
            ],
          ),
        ),
      ),
    );
  }
}
