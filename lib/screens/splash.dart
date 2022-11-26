import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pushNamed(context, '/scan');
    });

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Know',
                style: TextStyle(
                  fontFamily: 'Pixelated',
                  fontSize: 52
                ),
                // style: GoogleFonts.pressStart2p(fontSize: 52),
              ),
              Text(
                'Your',
                style: TextStyle(
                  fontFamily: 'Pixelated',
                  fontSize: 52
                ),
                // style: GoogleFonts.pressStart2p(fontSize: 52),
              ),
              Text(
                'Phone',
                style: TextStyle(
                  fontFamily: 'Pixelated',
                  fontSize: 52
                ),
                // style: GoogleFonts.pressStart2p(fontSize: 52),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
