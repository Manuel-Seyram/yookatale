import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LoyaltyPoints extends StatelessWidget {
  const LoyaltyPoints({super.key});

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
                  const Gap(60),
                  Center(
                    child: Text(
                      'Loyalty Points',
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
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: 180.0,
                  width: 370,
                  child: Card(
                    elevation: 10.0,
                    shadowColor: Colors.black38,
                    surfaceTintColor: Colors.white,
                    color: Colors.green.shade500,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const Gap(10),
                        Row(
                          children: [
                            //const Gap(20),
                            Column(
                              children: [
                                const Gap(25),
                                SizedBox(
                                  height: 100,
                                  width: 190,
                                  child: ListTile(
                                    title: Text(
                                      'YooKatale Points',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    subtitle: Text(
                                      '5000',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            //const Gap(20),
                            Image.asset(
                              'assets/loyalty.png',
                              height: 120,
                              width: 120,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(238, 238, 238, 0.9),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      const Gap(20),
                      const Center(
                        child: Icon(
                          Icons.card_giftcard_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Center(
                        child: Text(
                          'Refer your friends and earn',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '1000 points',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1.0,
                        color: Colors.black54,
                      ),
                      const Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Every time one of your friends uses your code when purchasing, he gets  1000 points and you get 1000 points.',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: DottedBorder(
                          radius: const Radius.circular(5),
                          color: Colors.black54,
                          dashPattern:const  [5, 3],
                          strokeCap: StrokeCap.butt,
                          borderType: BorderType.RRect,
                          padding:const EdgeInsets.all(15),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:2),
                            child: Row(
                              children: [
                                Text(
                                  'YKTLE 2023',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const Gap(120),
                                IconButton(
                                  icon: const Icon(
                                    Icons.copy_rounded,
                                    size: 25,
                                    color: Colors.black54,
                                  ),
                                  onPressed: () {},
                                  splashRadius: 1.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
