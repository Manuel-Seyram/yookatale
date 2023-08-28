import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Privacy Policy/privacy_policy.dart';
import '../customer  support/customer_support.dart';

class ProfileHomeOptions3 extends StatelessWidget {
  const ProfileHomeOptions3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const ContactSupport())));
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
                  width: 10.0,
                ),
                Icon(
                  Icons.support_agent_rounded,
                  size: 25,
                  color: Colors.green.shade800,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('Customer Support',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  width: 95.0,
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
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PrivacyPolicy(),
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
                  width: 10.0,
                ),
                Icon(
                  Icons.policy_rounded,
                  size: 25,
                  color: Colors.green.shade800,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('Privacy Policy',
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
        GestureDetector(
          onTap: () {
            _bottomsheet(context);
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
                  width: 10.0,
                ),
                Icon(
                  Icons.logout_rounded,
                  size: 25,
                  color: Colors.green.shade800,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('Logout',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  width: 190.0,
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

void _bottomsheet(BuildContext context) {
  showBottomSheet(
    context: context,
    builder: (context) => Container(
      height: 200.0,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        //border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'Logout',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.green.shade800,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(
            color: Colors.black12,
            indent: 30.0,
            endIndent: 30.0,
            thickness: 1.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text('Are you sure you want to logout?',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                )),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Row(
              children: [
                const SizedBox(
                  width: 40.0,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 40.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: const Color.fromRGBO(30, 73, 57, 1),
                        )),
                    child: Center(
                      child: Text('Cancel',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(30, 73, 57, 1),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5.0),
                      //border: Border.all(color: Colors.black12)
                    ),
                    child: Center(
                      child: Text('Logout',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
