import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:FindAWay/models/mumbaiIternary.dart';
import 'package:FindAWay/pages/homepage.dart';
import 'package:FindAWay/pages/planningpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Planning2Page extends StatefulWidget {
  final int index;
  final List<DateTime> selectedDates;

  const Planning2Page({Key? key, required this.index, required this.selectedDates}) : super(key: key);

  @override
  State<Planning2Page> createState() => _Planning2PageState();
}

class _Planning2PageState extends State<Planning2Page> {
  late List<ItineraryModel> itinerary;

  @override
  void initState() {
    super.initState();
    itinerary = generateItinerary(widget.index, widget.selectedDates.length);
  }

  List<ItineraryModel> generateItinerary(int index, int numberOfDays) {
  List<List<ItineraryModel>> allItineraries = [
    dubaiItinerary,
    germanyItinerary,
    sanFranciscoItinerary,
    rioDeJaneiroItinerary,
    londonItinerary,
  ];

  if (index >= 0 && index < allItineraries.length) {
    final List<ItineraryModel> selectedItinerary = allItineraries[index];
    return selectedItinerary.take(numberOfDays).toList();
  } else {
    // Return an empty list if index is out of bounds
    return [];
  }
}

  @override
  Widget build(BuildContext context) {
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue[400],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  TourPlanningPage(index: widget.index),
            ),
          );
        },
        child: const Text(
          'Next',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
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
              const SizedBox(width: 90),
              Padding(
                padding: const EdgeInsets.only(top: 11, right: 20),
                child: Text(
                  "Itinerary",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage("assets/dubai1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: itinerary.length,
              itemBuilder: (context, index) {
                final dayItinerary = itinerary[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        dayItinerary.day,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                         DateFormat.yMMMd().format(widget.selectedDates[index]),// Assuming date is added to ItineraryModel
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 350,
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(), // Changed to AlwaysScrollableScrollPhysics
                        shrinkWrap: true,
                        itemCount: dayItinerary.slots.length,
                        itemBuilder: (context, index) {
                          final slot = dayItinerary.slots[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 120, // Adjust the width according to your needs
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 239, 246, 251),// Change the color here
    ),
                                    child: Text(slot.time,
                                    style: TextStyle(
                                      color: Colors.blue[400],
                                      fontWeight: FontWeight.w600
                                    ),),
                                    
                                  ),
                                  
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 239, 246, 251),// Change the color here
    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 12), // Adjust vertical padding as needed
                                      child: Text(
                                        slot.activity,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,style: TextStyle(
                                      color: Colors.blue[400],
                                      fontWeight: FontWeight.w600
                                    ), // Limit to 2 lines of text
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 20),
          loginButton,
        ],
      ),
    );
  }
}

