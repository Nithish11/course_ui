import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screen_height * 0.55,
              width: screen_width * 1,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/02.png")),
              ),
            ),
            const Text(
              "Let's Start!",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 6, 12, 73)),
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 22,vertical: 10),
              child:  TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "Email",
                    hintText: "Enter valid mail id as abc@gmail.com",
                ),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 22,vertical: 10),
              child:  Row(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: "Password",
                        hintText: "Enter the alphabets with number, symbols",   
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            
            startbutton(),
            
          ],
        ),
      ),
    );
  }

  ElevatedButton startbutton() {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 18),
        child: Text(
          'Start Now',
          style: TextStyle(color: Colors.white),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 12, 3, 40),
        textStyle: const TextStyle(fontSize: 24, fontStyle: FontStyle.normal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => login_page()));
      },
    );
  }
}
