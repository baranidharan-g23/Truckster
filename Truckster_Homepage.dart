import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget //for static bar
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coimbatore Bus Tracking and ETicket Application",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 230, 230),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 73, 150, 252),
          toolbarHeight: 100,
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(27.0))),
          shadowColor: Color.fromARGB(255, 255, 160, 35),
          centerTitle: true,
          //surfaceTintColor: Colors.blueGrey,
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Truckster",
              textAlign: TextAlign.center,
              style: GoogleFonts.titanOne(
                  shadows: <Shadow>[
                    Shadow(
                      color: Color.fromARGB(255, 197, 137, 137),
                      offset: Offset(1.5, 3.5),
                      //blurRadius: 6
                    )
                  ],
                  fontSize: 54,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 241, 241, 241)),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(1.0),
              width: 400,
              //decoration: BoxDecoration(border: Border.all(width:2, color: Color.fromARGB(255, 255, 160, 35),borderRadius: BorderRadius.circular(100))),
              height: 200,
              color: Color.fromARGB(255, 236, 234, 234),
              child: AspectRatio(
                aspectRatio: 18 / 10,
                child: Image.asset("truck2_wb.png", fit: BoxFit.fill),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 14, bottom: 5, top: 3),
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 9.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 73, 150, 252), width: 4),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                "      connect with other truck owners, track your truck's location, and place orders with ease",
                style: GoogleFonts.titanOne(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 117, 113, 113)),
              ),
            ),
            Container(
              //color: Color.fromARGB(255, 248, 195, 127),
              padding: EdgeInsets.all(4),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 280.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 247, 163, 53),
                  border: Border.all(color: Color.fromARGB(255, 204, 143, 62)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Text(
                    "Pick Your Truck",
                    style: GoogleFonts.titanOne(
                        fontSize: 33,
                        fontWeight: FontWeight.w100,
                        color: Color.fromARGB(255, 230, 230, 230)),
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: false, // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Color.fromARGB(255, 236, 234, 234)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(2),
                            width: 190.0,
                            //color: Color.fromARGB(255, 236, 234, 234),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Image.asset("pickuptruck_wb.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 236, 234, 234),
                                          foregroundColor:
                                              Color.fromARGB(255, 255, 94, 0)),
                                      onPressed: () {},
                                      child: Text(
                                        "Pickup Trucks",
                                        style: TextStyle(fontSize: 20),
                                      )),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.all(2),
                            width: 190.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Color.fromARGB(255, 236, 234, 234)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 2),
                                  child:
                                      Image.asset("semi-trailertruck_wb.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 31),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 236, 234, 234),
                                          foregroundColor:
                                              Color.fromARGB(255, 255, 94, 0)),
                                      onPressed: () {},
                                      child: Text("Semi-Trailers",
                                          style: TextStyle(fontSize: 20))),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.all(2),
                            width: 190.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Color.fromARGB(255, 236, 234, 234)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Image.asset("containertrucks_wb.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 32),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 236, 234, 234),
                                          foregroundColor:
                                              Color.fromARGB(255, 255, 94, 0)),
                                      onPressed: () {},
                                      child: Text("Container Trucks",
                                          style: TextStyle(fontSize: 18))),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.all(2),
                            width: 190.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Color.fromARGB(255, 236, 234, 234)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 7, left: 5, right: 5),
                                  child: Image.asset("dumptrucks_wb.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 236, 234, 234),
                                          foregroundColor:
                                              Color.fromARGB(255, 255, 94, 0)),
                                      onPressed: () {},
                                      child: Text("Dump Trucks",
                                          style: TextStyle(fontSize: 20))),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.all(2),
                            width: 190.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Color.fromARGB(255, 236, 234, 234)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image.asset("flatbedtruck_wb.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 14),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 236, 234, 234),
                                          foregroundColor:
                                              Color.fromARGB(255, 255, 94, 0)),
                                      onPressed: () {},
                                      child: Text("Flat-bed Trucks",
                                          style: TextStyle(fontSize: 20))),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.all(2),
                            width: 190.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Color.fromARGB(255, 236, 234, 234)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child:
                                      Image.asset("refrigeratedtruck_wb.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 236, 234, 234),
                                          foregroundColor:
                                              Color.fromARGB(255, 255, 94, 0)),
                                      onPressed: () {},
                                      child: Text("Refrigerated Trucks",
                                          style: TextStyle(fontSize: 15.5))),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.all(2),
                            width: 190.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Color.fromARGB(255, 236, 234, 234)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Image.asset("tankertruck_wb.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 236, 234, 234),
                                          foregroundColor:
                                              Color.fromARGB(255, 255, 94, 0)),
                                      onPressed: () {},
                                      child: Text(
                                        "Tanker Trucks",
                                        style: TextStyle(fontSize: 20),
                                      )),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: FluidNavBar(
          style: const FluidNavBarStyle(
              iconUnselectedForegroundColor: Color.fromARGB(255, 236, 234, 234),
              iconSelectedForegroundColor: Color.fromARGB(255, 236, 234, 234),
              iconBackgroundColor: Color.fromARGB(255, 255, 154, 3),
              barBackgroundColor: Color.fromARGB(255, 73, 150, 252)),
          icons: [
            FluidNavBarIcon(icon: Icons.home),
            FluidNavBarIcon(icon: Icons.location_on),
            FluidNavBarIcon(icon: Icons.groups_rounded),
          ],
          onChange: (val) {},
        ),
      ),
    );
  }
}
