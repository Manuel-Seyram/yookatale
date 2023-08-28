import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../edit profile/edit_profile.dart';

class ProfileHomeOptions extends StatelessWidget {
  const ProfileHomeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfile(),
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
                const SizedBox(
                  width: 7.0,
                ),
                Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.green.shade800,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('Edit profile',
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
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.money_rounded,
                  size: 25,
                  color: Colors.green.shade800,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('Payment Info',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  width: 150.0,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black12,
                  size: 20.0,
                )
              ]),
            ),
          ),
        )
      ],
    );
  }
}
