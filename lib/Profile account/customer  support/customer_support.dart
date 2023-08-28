import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactSupport extends StatelessWidget {
  const ContactSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: Column(
        children: [
          const Gap(60),
          Row(
            children: [
              const Gap(30),
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
              const Gap(80),
              Text(
                'Support',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30.0,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: ' Contact ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Support ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30.0,
              ),
              Icon(
                Icons.phone_outlined,
                color: Colors.green.shade800,
                size: 30.0,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text(
                '+233 123 456 7890',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30.0,
              ),
              Icon(
                Icons.email_outlined,
                color: Colors.green.shade800,
                size: 30.0,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text(
                'support@yookatale.com',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30.0,
              ),
              Icon(
                Icons.chat_outlined,
                color: Colors.green.shade800,
                size: 30.0,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text(
                'chat on WhatsApp',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
