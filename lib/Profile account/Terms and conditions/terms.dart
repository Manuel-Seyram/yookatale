import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

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
                  const Gap(30),
                  Center(
                    child: Text(
                      'Terms and Conditions',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(30),
              Row(
                children: [
                  const Gap(30),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'YooKatale ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      TextSpan(
                        text: 'Terms',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 90.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 350.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.4,
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Icon(
                              Icons.handshake_rounded,
                              size: 35,
                              color: Colors.green.shade800,
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            Text(
                              'YooKatale',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 90.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Gap(80),
                            Text(
                              'lorem lorem lorem lorem lorem lorem lorem\nlorem lorem lorem lorem lorem lorem lore\nlorem lorem lorem lorem lorem lorem lore\nlorem lorem lorem lorem lorem lorem lore\nlorem lorem lorem lorem lorem lorem lore',
                              maxLines: 8,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
