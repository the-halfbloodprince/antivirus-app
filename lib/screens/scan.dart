import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String message = 'Scan Phone Now';

  void buffer() {
    setState(() {
      message = 'Scanning...';
      loading = true;
    });

    Future.delayed(Duration(milliseconds: Random().nextInt(6000) + 2000), () {
      // setState(() {
      //   message = 'Done';
      //   loading = false;
      // });
      showContent = false;
      Navigator.pushNamed(context, '/results');
    });
  }

  bool loading = false, showContent = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showContent
          ? Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(vertical: 100),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      message,
                      style: GoogleFonts.pressStart2p(fontSize: 20),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    loading
                        ? SpinKitFadingGrid(
                            color: Colors.black,
                            size: 256,
                          )
                        : InkWell(
                            child: Icon(
                              Icons.power_settings_new,
                              size: 256,
                            ),
                            onTap: buffer,
                          )
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
