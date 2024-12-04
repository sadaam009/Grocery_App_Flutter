import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'intro_page.dart';

class Home_Intro extends StatelessWidget {
  const Home_Intro({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: content(context),
    );
  }

  Widget content(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 80, top: 90),
      child: Column(
        children: [
          // Log Image
          Image.asset("lib/images/avacados.png"),
          // const SizedBox(
          //   height: 50,
          // ),

          /// Some Text
          Text(
            "Kusoo Dhawaada Suuqa Weeyn Ee Qudaarta Bakaaro",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 40,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Hada Dalbo Macamiil"),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed("/intro_page"),
            child: Container(
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.deepPurple),
              child: const Center(
                child: Text(
                  "Dalbo Hada",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
