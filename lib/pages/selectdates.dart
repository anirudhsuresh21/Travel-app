import 'package:FindAWay/pages/plans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:FindAWay/pages/homepage.dart';
import 'package:FindAWay/pages/plans2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDatesPage extends StatefulWidget {
  final int index;
  

  const SelectDatesPage({Key? key, required this.index}) : super(key: key);


  @override
  State<SelectDatesPage> createState() => _SelectDatesPageState();
}

class _SelectDatesPageState extends State<SelectDatesPage> {
  late CalendarFormat _calendarFormat;
  late DateTime _focusedDay;
  List<DateTime> _selectedDays = [];
  

  @override
  void initState() {
    super.initState();
    _calendarFormat = CalendarFormat.month;
    _focusedDay = DateTime.now();
  }

  bool isConsecutive(DateTime date) {
    if (_selectedDays.isEmpty) return true;

    final lastSelectedDate = _selectedDays.last;
    final difference = date.difference(lastSelectedDate).inDays;
    return difference == 1;
  }

  final TextEditingController queryController = TextEditingController();

  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: queryController,
      keyboardType: TextInputType.emailAddress,
      // validator: ,
      onSaved: (value) {
        queryController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.question_answer),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Query",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          )),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(70),
      color: Colors.blue[400],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
      if (_selectedDays.length == 3 || _selectedDays.length == 5 || _selectedDays.length == 7) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Planning2Page(index: widget.index, selectedDates: _selectedDays)),
        );
      } else {
        // Display a message indicating that only 3, 5, or 7 consecutive days can be selected
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please select 3, 5, or 7 consecutive days.'),
          ),
        );
      }
    },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.send), // Add the icon here
            // Add spacing between icon and text
          ],
        ),
      ),
    );

  final nextButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(50),
      color: Colors.blue[400],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 330.0,
         onPressed: () {
      if (_selectedDays.length == 3 || _selectedDays.length == 5 || _selectedDays.length == 7) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Planning2Page(index: widget.index, selectedDates: _selectedDays)),
        );
      } else {
        // Display a message indicating that only 3, 5, or 7 consecutive days can be selected
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please select 3, 5, or 7 consecutive days.'),
          ),
        );
      }
    },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Next") // Add the icon here
            // Add spacing between icon and text
          ],
        ),
      ),
    );
    bool forAndroid = false;
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Row(
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
                                builder: (context) => PlanningPage(index: widget.index,)));
                      }),
                  const SizedBox(
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
                      )),
                ],
              ),
            ),
                      Container(
            height: 200,
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
            Container(
              padding: const EdgeInsets.all(16.0),
              child: TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return _selectedDays.contains(day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    if (_selectedDays.contains(selectedDay)) {
                      _selectedDays.remove(selectedDay);
                    } else if (_selectedDays.length < 7 &&
                        isConsecutive(selectedDay)) {
                      _selectedDays.add(selectedDay);
                    } else {
                      // Display a message indicating the limit of 5 consecutive days
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Only Consecutive days can be selected'),
                        ),
                      );
                    }
                  });
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
                calendarStyle: CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    color: Colors.blue[400], // Change the focus color here
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color:
                        Colors.blue[300], // Change the focused day color here
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30.0,
                ),
                SizedBox(
                  width: 250.0,
                  child: emailField,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                  width: 64.0,
                  child: loginButton,
                ),
              ],
            ),
            const SizedBox(
              height:50.0,
            ),
            Row(children: [
              SizedBox(
                width:25.0,
              ),
              nextButton,
              // SizedBox(
              //   width:25.0,
              // ),
              

            ],),
            SizedBox(
              height: 10.0,
            )
            ],
           )
        ),
      );
  }
}
