import 'package:flutter/material.dart';
import 'package:FindAWay/pages/homepage.dart';
import 'package:FindAWay/pages/search.dart';
import 'package:FindAWay/widgets/app_text.dart';
import 'package:FindAWay/widgets/landing_page_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _currentIndex = 1;
  String _username = '';
  String _email = '';

  @override
  void initState() {
    super.initState();
    // Call getUserData when the page is first loaded
    getUserData().then((userData) {
      if (userData != null) {
        setState(() {
          _username = userData['firstname'] ?? '';
          print(_username);
          _email = userData['email'] ?? '';
          print(_email);
        });
      }
    });
  }

  Future<Map<String, String>?> getUserData() async {
    final Database database = await openDatabase(
      join(await getDatabasesPath(), 'flutter.db'),
    );

    // Retrieve username and email where status is true
    final List<Map<String, dynamic>> users = await database.rawQuery(
        'SELECT firstname, email FROM users6 WHERE status = ?', [true]);

    await database.close();

    // Return user data if found, otherwise return null
    if (users.isNotEmpty) {
      return {
        'firstname': users.first['firstname'] ?? '',
        'email': users.first['email'] ?? '',
      };
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 22.0,
            ),
            Container(
              height: 130.0,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Image.asset(
                      "./assets/Advanture1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 100.0,
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Column(
                      children: [
                        Text(
                          "Hi, $_username",
                          style: GoogleFonts.poppins(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          _email,
                          style: GoogleFonts.poppins(
                              fontSize: 12.0, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(Icons.account_box_rounded),
                        ),
                        const Text("Account")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(Icons.support_agent_rounded),
                        ),
                        const Text("Support")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(Icons.notifications_rounded),
                        ),
                        const Text("Notification")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(20.0),
             decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Trips",
                    style: GoogleFonts.poppins(
                        fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Row(children: [
                      const Icon(Icons.card_travel,color: Colors.grey,),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "View/Manage Trips",
                        style: GoogleFonts.poppins(
                            fontSize: 13.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 143.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.blue[400],
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Row(children: [
                      const Icon(Icons.favorite_border_rounded,color: Colors.grey,),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Wishlist",
                        style: GoogleFonts.poppins(
                            fontSize: 13.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 213.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.blue[400],
                      )
                    ]),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Trips",
                    style: GoogleFonts.poppins(
                        fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Row(children: [
                      const Icon(Icons.card_giftcard_rounded,color: Colors.grey,),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Gift Cards",
                        style: GoogleFonts.poppins(
                            fontSize: 13.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 201.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.blue[400],
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Row(children: [
                      const Icon(Icons.money,color: Colors.grey,),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Rewards",
                        style: GoogleFonts.poppins(
                            fontSize: 13.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 209.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.blue[400],
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Row(children: [
                      const Icon(Icons.person_add_rounded,color: Colors.grey,),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Refer & Earn",
                        style: GoogleFonts.poppins(
                            fontSize: 13.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 188.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.blue[400],
                      )
                    ]),
                  ),
                ],
              ),
            ),
                        Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Settings",
                    style: GoogleFonts.poppins(
                        fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Row(children: [
                      const Icon(Icons.language_rounded,color: Colors.grey,),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Language",
                        style: GoogleFonts.poppins(
                            fontSize: 13.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 201.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.blue[400],
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Row(children: [
                      const Icon(FontAwesomeIcons.flag, color: Colors.grey,),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Country",
                        style: GoogleFonts.poppins(
                            fontSize: 13.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 213.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.blue[400],
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rate Us",
                    style: TextStyle(fontSize: 15.0,
                    color: Colors.blueAccent),
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 15.0,
                    color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });

          // if (index == 0){
          //   Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => const HomePage(),
          //   ));}
          // else
         if (index == 0) {
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: HomePage(),
        );
      },
    ),
  );
} else if (index == 1) {
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1.0, 0.0),
            end:  Offset.zero,
          ).animate(animation),
          child: SearchPage(),
        );
      },
    ),
  );
}
// else if (index == 3) {
//   Navigator.of(context).push(
//     PageRouteBuilder(
//       transitionDuration: Duration(milliseconds: 500),
//       pageBuilder: (context, animation, secondaryAnimation) {
//         return SlideTransition(
//           position: Tween<Offset>(
//             begin: Offset(1.0, 0.0),
//             end:  Offset.zero,
//           ).animate(animation),
//           child: SettingsPage(),
//         );
//       },
        },


        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "",
          ),
        ],
        selectedItemColor: Colors.black, // Set the selected item color
        unselectedItemColor: Colors.black, // Set the unselected item color
      ),
    );
  }
}
