import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemDataStruct {
  String appName = '', flag = '';

  ListItemDataStruct(this.appName, this.flag);
}

class Results extends StatelessWidget {
  Results({super.key});

  final List<ListItemDataStruct> listItemsData = [
    ListItemDataStruct('Family Locator', 'dual-use'),
    ListItemDataStruct('Voice Recorder', 'dual-use'),
    ListItemDataStruct('Accessibility', ''),
    ListItemDataStruct('Amazon', ''),
    ListItemDataStruct('Calculator', ''),
    ListItemDataStruct('Calendar', ''),
    ListItemDataStruct('Clock', ''),
    ListItemDataStruct('Bumble', 'dual-use'),
    ListItemDataStruct('Discord', ''),
    ListItemDataStruct('Facebook', ''),
    ListItemDataStruct('LinkedIn', ''),
    ListItemDataStruct('Meet', ''),
    ListItemDataStruct('Ola', ''),
    ListItemDataStruct('PayTm', ''),
    ListItemDataStruct('Sadhguru', ''),
    ListItemDataStruct('Snapchat', 'dual-use'),
    ListItemDataStruct('Swiggy', ''),
    ListItemDataStruct('Telegram', ''),
    ListItemDataStruct('WhatsApp', ''),
    ListItemDataStruct('YouTube', ''),
    ListItemDataStruct('Zepto', ''),
    ListItemDataStruct('Zoom', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(
            20,
            MediaQuery.of(context).size.height * 0.15,
            20,
            MediaQuery.of(context).size.height * 0.1,
          ),
          child: Column(
            children: [
              Text(
                'Your results are ready',
                style: GoogleFonts.pressStart2p(fontSize: 17),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'App',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Flag',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      // color: Colors.amber,
                      child: ListView(
                        children: listItemsData
                            .map((data) => Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          data.appName,
                                          style: TextStyle(
                                            fontSize: 17,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          data.flag,
                                          style: TextStyle(
                                            fontSize: 17,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ),
                                  ],
                                ))
                            .toList(),
                        // children: [

                        //   Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         'App',
                        //         style: TextStyle(
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //       Text(
                        //         'Flag',
                        //         style: TextStyle(
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        //   Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         'App',
                        //         style: TextStyle(
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //       Text(
                        //         'Flag',
                        //         style: TextStyle(
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
