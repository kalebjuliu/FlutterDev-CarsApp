import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/alpine_background.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center),
        ),
        child: PageView(
          /// [PageView.scrollDirection] defaults to [Axis.horizontal].
          /// Use [Axis.vertical] to scroll vertically.
          scrollDirection: Axis.horizontal,
          controller: controller,
          onPageChanged: (page){
            setState(() {

            });
          },
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(40, 100, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ALPINE A110',
                    style: GoogleFonts.spartan(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 18, 12, 0),
                    child: Text(
                      'The A110 achieved most of its fame in the early 1970s as a successful rally car. After winning several rallies in France in the late 1960s with the cast-iron R8 Gordini Cléon-Fonte engines the car was fitted with the aluminium-block Cléon-Alu from the Renault 16 TS. With two twin-venturi Weber 45 carburetors, the TS engine has a power output of 125 hp (93 kW) DIN at 6,000 rpm. ',
                      style: GoogleFonts.spartan(
                          fontSize: 12,
                          color: Colors.white54,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                FractionallySizedBox(
                  heightFactor: 0.7,
                  widthFactor: 0.95,
                  child: PageView(
                    children: [
                      Stack(
                        children: [
                          Card(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(40, 200, 40, 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Center(
                                    child: Text(
                                      '1973 WORLD RALLY',
                                      style: GoogleFonts.spartan(
                                        fontSize: 20,
                                        color: Color(0xFF44474d),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Center(
                                    child: Text(
                                      'Renault elected to compete with the A110. With a team featuring Bernard Darniche, Jean-Pierre Nicolas and Jean-Luc Thérier as permanent drivers and "guest stars" like Jean-Claude Andruet (who won the 1973 Monte Carlo Rally) the A110 won most of the races where the works team was entered, making Alpine the first World Rally Champion.',
                                      textAlign: TextAlign.center, style: GoogleFonts.spartan(
                                        fontSize: 12,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w400,
                                        height: 1.8
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: MediaQuery.of(context).size.width * -0.03,
                              child: Transform.rotate(angle: -pi / 20, child: Image.asset('assets/alpine_rally.png', scale: 0.99,),)
                          ),
                        ]
                      ),
                      Stack(
                          children: [
                            Card(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 200, 40, 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    Center(
                                      child: Text(
                                        '1973 WORLD RALLY',
                                        style: GoogleFonts.spartan(
                                          fontSize: 20,
                                          color: Color(0xFF44474d),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 14),
                                    Center(
                                      child: Text(
                                        'Renault elected to compete with the A110. With a team featuring Bernard Darniche, Jean-Pierre Nicolas and Jean-Luc Thérier as permanent drivers and "guest stars" like Jean-Claude Andruet (who won the 1973 Monte Carlo Rally) the A110 won most of the races where the works team was entered, making Alpine the first World Rally Champion.',
                                        textAlign: TextAlign.center, style: GoogleFonts.spartan(
                                          fontSize: 12,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w400,
                                          height: 1.8
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                top: MediaQuery.of(context).size.width * -0.03,
                                child: Transform.rotate(angle: -pi / 20, child: Image.asset('assets/alpine_rally.png', scale: 0.99,),)
                            ),
                          ]
                      ),
                      Stack(
                          children: [
                            Card(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 200, 40, 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    Center(
                                      child: Text(
                                        '1973 WORLD RALLY',
                                        style: GoogleFonts.spartan(
                                          fontSize: 20,
                                          color: Color(0xFF44474d),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 14),
                                    Center(
                                      child: Text(
                                        'Renault elected to compete with the A110. With a team featuring Bernard Darniche, Jean-Pierre Nicolas and Jean-Luc Thérier as permanent drivers and "guest stars" like Jean-Claude Andruet (who won the 1973 Monte Carlo Rally) the A110 won most of the races where the works team was entered, making Alpine the first World Rally Champion.',
                                        textAlign: TextAlign.center, style: GoogleFonts.spartan(
                                          fontSize: 12,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w400,
                                          height: 1.8
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                top: MediaQuery.of(context).size.width * -0.03,
                                child: Transform.rotate(angle: -pi / 20, child: Image.asset('assets/alpine_rally.png', scale: 0.99,),)
                            ),
                          ]
                      ),
                      Stack(
                          children: [
                            Card(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 200, 40, 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    Center(
                                      child: Text(
                                        '1973 WORLD RALLY',
                                        style: GoogleFonts.spartan(
                                          fontSize: 20,
                                          color: Color(0xFF44474d),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 14),
                                    Center(
                                      child: Text(
                                        'Renault elected to compete with the A110. With a team featuring Bernard Darniche, Jean-Pierre Nicolas and Jean-Luc Thérier as permanent drivers and "guest stars" like Jean-Claude Andruet (who won the 1973 Monte Carlo Rally) the A110 won most of the races where the works team was entered, making Alpine the first World Rally Champion.',
                                        textAlign: TextAlign.center, style: GoogleFonts.spartan(
                                          fontSize: 12,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w400,
                                          height: 1.8
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                top: MediaQuery.of(context).size.width * -0.03,
                                child: Transform.rotate(angle: -pi / 20, child: Image.asset('assets/alpine_rally.png', scale: 0.99,),)
                            ),
                          ]
                      ),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
