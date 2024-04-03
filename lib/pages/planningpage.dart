import 'package:flutter/material.dart';
import 'package:FindAWay/models/plans.dart';
import 'package:FindAWay/pages/homepage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TourPlanningPage extends StatefulWidget {
  final int index;

  const TourPlanningPage({Key? key, required this.index}) : super(key: key);

  @override
  State<TourPlanningPage> createState() => _TourPlanningPageState();
}

class _TourPlanningPageState extends State<TourPlanningPage> {
  late TravelData data;

@override
 void initState() {
    super.initState();
    // Initialize data based on widget.index
    switch (widget.index) {
      case 0:
        data = dubaiData[0];
        break;
      case 1:
        data = germanyData[0];
        break;
      case 2:
        data = sanFranciscoData[0];
        break;
      case 3:
        data = rioDeJaneiroData[0];
        break;
      case 4:
        data = londonData[0];
        break;
      default:
        data = dubaiData[0]; // Initialize with default empty data
    }
  }

  @override
  Widget build(BuildContext context) {
    final Button = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue[400],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 365.0,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Booking Has Been Confirmed")),
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
        child: const Text(
          'Confirm Booking',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11.0, right: 20.0),
                    child: Text(
                      "Travel Plan",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0, right: 20.0),
              child: Text(
                "Hotel",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(data.hotelImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 11.0, right: 20.0),
              child: Text(
                "Flight",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  width: 150.0,
                  height: 260.0,
                  decoration: BoxDecoration(
                    color: Color(0xffe9e9e9),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 0.0),
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 30.0,
                            height: 20.0,
                            child: Image.network(
                              "https://t3.ftcdn.net/jpg/00/42/09/98/360_F_42099891_6Sz9g70EoF2AQhogDZiFE9UQ2ncan1Pk.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        height: 150.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 30.0,
                              top: 15.0,
                              child: Align(
                                child: SizedBox(
                                  // width: 30.0,
                                  child: Text(
                                    "Mumbai",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              top: 70,
                              child: Align(
                                child: SizedBox(
                                  // width: 30.0,
                                  // height:20.0,
                                  child: Text(
                                    "21.03 18:30 AM",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              top: 130.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.airplane_ticket,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    " First Class",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(Icons.arrow_forward_rounded),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  width: 150.0,
                  height: 260.0,
                  decoration: BoxDecoration(
                    color: Color(0xffe9e9e9),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 0.0),
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 30.0,
                            height: 20.0,
                            child: Image.network(
                              data.flag,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        height: 150.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 40.0,
                              top: 15.0,
                              child: Align(
                                child: SizedBox(
                                  // width: 30.0,
                                  child: Text(
                                    data.destination,
                                    style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              top: 70,
                              child: Align(
                                child: SizedBox(
                                  // width: 30.0,
                                  // height:20.0,
                                  child: Text(
                                    "21.03 18:30 AM",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              top: 130.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.airplane_ticket,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    " First Class",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0, right: 20.0),
              child: Text(
                "Fare",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 11.0),
                Text(
                  "Hotels",
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "______________________₹${data.hotelRates}",
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: 11.0),
                Text(
                  "Flight",
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "_______________________₹${data.flightRates}",
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: 11.0),
                Text(
                  "Miscellaneous",
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "__________________₹${data.miscellaneousRates}",
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
             Row(
              children: [
                SizedBox(width: 11.0),
                Text(
                  "Total",
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "________________________₹${data.miscellaneousRates + data.flightRates + data.hotelRates}",
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(width: 10.0),
                Button,
              ],
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
