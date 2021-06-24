import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_cars/details.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/details': (context) => Details()
  },
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> imgList = [
    'assets/alpine_transparent.png',
    'assets/alpine_transparent.png',
    'assets/alpine_transparent.png',
    'assets/alpine_transparent.png',
    'assets/alpine_transparent.png',
    'assets/alpine_transparent.png',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Center(child: Text('CLASSICAL', style: GoogleFonts.spartan(
                  textStyle: TextStyle(letterSpacing: 6, color: Colors.grey,
                  fontSize: 12, fontWeight: FontWeight.w600)
              ),),),
              CarouselSlider(items: imgList.map((item) => Container(
                child: Center(
                  child: Image.asset(item, fit: BoxFit.cover, width: 300,),
                ),
              )).toList(), options: CarouselOptions(
                enlargeCenterPage: true,
                onPageChanged: (index, reason){
                  setState(() {
                    _current = index;
                  });
                }
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Color(0xFF44474d))
                              .withOpacity(_current == entry.key ? 0.9 : 0.1)),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 30,),
              Center(child: Text('ALPINE A110', style: GoogleFonts.spartan(
                  textStyle: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w800, color: Color(0xFF44474d))
              ),),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(child: Text('The Alpine A110 is a sports car produced by French automobile manufacturer '
                    'Alpine from 1961 to 1977. The car was styled as a "berlinette", which in the post-WWII era refers to '
                    'a small enclosed two-door berline, better-known as a coupé.' ,textAlign: TextAlign.center ,style: GoogleFonts.spartan(
                    textStyle: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF44474d), height: 1.6)
                ),),),
              ),
              SizedBox(height: 20,),
              IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("CLASS",
                            style: GoogleFonts.spartan(textStyle: TextStyle(
                              fontSize: 9,
                              letterSpacing: 4,
                              color: Colors.grey
                            )),
                          ),
                          SizedBox(height: 7,),
                          Text("SPORTS",
                            style: GoogleFonts.spartan(
                              fontSize: 18,
                              color: Color(0xFF44474d),
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Text("YEAR",
                            style: GoogleFonts.spartan(textStyle: TextStyle(
                                fontSize: 9,
                                letterSpacing: 4,
                                color: Colors.grey
                            )),
                          ),
                          SizedBox(height: 7,),
                          Text("1961",
                            style: GoogleFonts.spartan(
                                fontSize: 18,
                                color: Color(0xFF44474d),
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32,),
              Center(
                child: TextButton(
                    child: Text(
                        "VIEW DETAILS".toUpperCase(),
                      style: GoogleFonts.spartan(
                        letterSpacing: 5,
                        fontSize: 10,
                        color: Color(0xFF44474d),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(100, 15, 100, 15)),
                        foregroundColor: MaterialStateProperty.all<Color>(Color(0xFF44474d)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Color(0xFF44474d))
                            )
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context, FadeRoute(page: Details()));
                    }
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}


class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({required this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}