import 'package:FindAWay/pages/destination.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:FindAWay/pages/homepage.dart';
import 'package:FindAWay/pages/settings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _currentIndex = 0;

  final List<String> imageUrls = [
    "https://c4.wallpaperflare.com/wallpaper/219/894/458/5bd329b2b5293-wallpaper-thumb.jpg",
    "https://c4.wallpaperflare.com/wallpaper/731/397/72/palm-jebel-ali-dubai-united-arab-emirates-ultra-hd-wallpapers-for-desktop-and-mobile-3840%C3%972400-wallpaper-thumb.jpg",
    "https://c4.wallpaperflare.com/wallpaper/507/868/54/united-arab-emirates-calm-night-in-dubai-city-and-architecture-hd-desktop-wallpapers-for-tablets-and-mobile-phones-free-download-3840%C3%972160-wallpaper-thumb.jpg",
    "https://c4.wallpaperflare.com/wallpaper/310/473/125/5bd32abb3f77b-wallpaper-preview.jpg",
  ];

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];
  final List<String> captions = [
    "Explore the Rich History and Cultural Heritage of Russia\nDiscover iconic landmarks and vibrant cities.",
    "Experience the Romantic Charm and Cultural Delights of France\nIndulge in exquisite cuisine and world-renowned attractions.",
    "Embark on an Adventure Through the Diverse Landscapes of Argentina\nDiscover natural wonders and vibrant cities.",
    "Discover the Enchanting Beauty and Rich Culture of Bali\nRelax on stunning beaches and explore ancient temples.",
  ];
  final dest1 = 'Australia';
  final dest2 = 'Singapore';
  final dest3 = 'NYC';
  final dest4 = 'Japan';

  List<bool> isFavorite = [false, false, false, false];

  Widget _buildIcon(int index) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 246, 251),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Icon(_icons[index], size: 25.0, color: Colors.blue[400]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                const SizedBox(width: 110),
                Padding(
                  padding: const EdgeInsets.only(top: 11, right: 20),
                  child: Text(
                    "Explore",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            CarouselSlider.builder(
              itemCount: imageUrls.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return GestureDetector(
                  onTap: () {
                    // Handle image click
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            height: 200.0,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(imageUrls[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              isFavorite[index]
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              // Handle favorite icon click
                              setState(() {
                                isFavorite[index] = !isFavorite[index];
                              });
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text(
                          captions[index],
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              },
              options: CarouselOptions(
                aspectRatio: 4 / 5,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.8,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Destinations Travellers Love",
                style: GoogleFonts.poppins(
                    fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DestinationPage(
                                  dest: dest1,
                                )),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 175,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                            image: DecorationImage(
                              image: AssetImage('./assets/aus.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            color: Colors.transparent,
                            child: Text(
                              'Australia',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          bottom: 0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DestinationPage(
                                  dest: dest2,
                                )),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 175,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                            image: DecorationImage(
                              image: AssetImage('./assets/singa.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            color: Colors.transparent,
                            child: Text(
                              'Singapore',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          bottom: 0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DestinationPage(
                                  dest: dest3,
                                )),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 175,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                            image: DecorationImage(
                              image: AssetImage('./assets/nycc.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            color: Colors.transparent,
                            child: Text(
                              'New York',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          bottom: 0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DestinationPage(
                                  dest: dest4,
                                )),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 175,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                            image: DecorationImage(
                              image: AssetImage('./assets/jp.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            color: Colors.transparent,
                            child: Text(
                              'Japan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          bottom: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
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
          } else if (index == 2) {
            Navigator.of(context).push(
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 500),
                pageBuilder: (context, animation, secondaryAnimation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: SettingsPage(),
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
//     ),
//   );
// }
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
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite),
          //   label: "",
          // ),
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
