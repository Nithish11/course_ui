import 'package:course_design/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class start_screen extends StatefulWidget {
  const start_screen({super.key});

  @override
  State<start_screen> createState() => _start_screenState();
}

class _start_screenState extends State<start_screen> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screen_height * 0.70,
            width: screen_width * 1,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/01.png")),
              // color: Colors.red,
            ),
          ),
          Text(
            "Learn at home",
            style: GoogleFonts.aBeeZee(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 6, 12, 73)),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "efficiently and effectively",
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 157, 165, 170)),
          ),
          SizedBox(
            height: 62,
          ),
          ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 18),
              child: Text(
                'Start Now',
                style: TextStyle(color: Colors.white),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 12, 3, 40),
              textStyle:
                  const TextStyle(fontSize: 24, fontStyle: FontStyle.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>login_page()));
            },
          ),
        ],
      ),
    );
  }
}
