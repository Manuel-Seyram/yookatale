import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yookatale/Profile%20account/Track%20delivery/track_details.dart';

class TrackDelivery extends StatelessWidget {
  const TrackDelivery({super.key});

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
                  const Gap(70),
                  Center(
                    child: Text(
                      'Track Delivery',
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
                  Text(
                    'Orders',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: listTileWidgets(context).length,
                  itemBuilder: (context, index) {
                    return listTileWidgets(context)[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> listTileWidgets(BuildContext context) {
  return [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListTile(
        selectedColor: Colors.greenAccent,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrackDetails(),
              ));
        },
        visualDensity: VisualDensity.adaptivePlatformDensity,
        title: Text(
          'Order No. 123278846',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        subtitle: Text(
          '27-09-23',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 12.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        trailing: Text(
          'Delivered',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.green,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
    const Gap(10),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListTile(
        selectedColor: Colors.greenAccent,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrackDetails(),
              ));
        },
        visualDensity: VisualDensity.adaptivePlatformDensity,
        title: Text(
          'Order No. 123278846',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        subtitle: Text(
          '27-09-23',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 12.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        trailing: Text(
          'Delivered',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.green,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
    const Gap(10),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListTile(
        selectedColor: Colors.greenAccent,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrackDetails(),
              ));
        },
        visualDensity: VisualDensity.adaptivePlatformDensity,
        title: Text(
          'Order No. 123278846',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        subtitle: Text(
          '27-09-23',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 12.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        trailing: Text(
          'Delivered',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.green,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
    const Gap(10),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListTile(
        selectedColor: Colors.greenAccent,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrackDetails(),
              ));
        },
        visualDensity: VisualDensity.adaptivePlatformDensity,
        title: Text(
          'Order No. 123278846',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        subtitle: Text(
          '27-09-23',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 12.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        trailing: Text(
          'Delivered',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.green,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
    const Gap(10),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListTile(
        selectedColor: Colors.greenAccent,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrackDetails(),
              ));
        },
        visualDensity: VisualDensity.adaptivePlatformDensity,
        title: Text(
          'Order No. 123278846',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        subtitle: Text(
          '27-09-23',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 12.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        trailing: Text(
          'Delivered',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.green,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
  ];
}
