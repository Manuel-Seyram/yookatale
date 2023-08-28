import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/edit_options.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
                  const Gap(80),
                  Center(
                    child: Text(
                      'Edit Profile',
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
                height: 70.0,
              ),
              const EditProfileOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
