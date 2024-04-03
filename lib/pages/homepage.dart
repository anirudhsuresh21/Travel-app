import 'package:FindAWay/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:FindAWay/models/hotels.dart';
import 'package:FindAWay/pages/plans.dart';
import 'package:FindAWay/pages/settings.dart';
import 'package:FindAWay/widgets/landing_page_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // List of image URLs
  final List<String> imageUrls = [
    "https://c4.wallpaperflare.com/wallpaper/219/894/458/5bd329b2b5293-wallpaper-thumb.jpg",
    "https://c4.wallpaperflare.com/wallpaper/731/397/72/palm-jebel-ali-dubai-united-arab-emirates-ultra-hd-wallpapers-for-desktop-and-mobile-3840%C3%972400-wallpaper-thumb.jpg",
    "https://c4.wallpaperflare.com/wallpaper/507/868/54/united-arab-emirates-calm-night-in-dubai-city-and-architecture-hd-desktop-wallpapers-for-tablets-and-mobile-phones-free-download-3840%C3%972160-wallpaper-thumb.jpg",
    "https://c4.wallpaperflare.com/wallpaper/310/473/125/5bd32abb3f77b-wallpaper-preview.jpg",
    // "https://c4.wallpaperflare.com/wallpaper/297/288/1009/5bd320d590bcf-wallpaper-preview.jpg",
  ];
    final List<String> imageUrls1 = [
    
    "https://c4.wallpaperflare.com/wallpaper/731/397/72/palm-jebel-ali-dubai-united-arab-emirates-ultra-hd-wallpapers-for-desktop-and-mobile-3840%C3%972400-wallpaper-thumb.jpg",
    "https://imageio.forbes.com/specials-images/imageserve/65202dd7e121712b78c5e209/Cityscape-of-Frankfurt-am-Main-at-sunrise--Aerial-view/960x0.jpg?height=473&width=711&fit=bounds",
    "https://www.qantas.com/content/travelinsider/en/explore/north-america/usa/san-francisco/what-not-to-do-in-san-francisco/_jcr_content/parsysTop/hero.img.full.medium.jpg/1538957665734.jpg",
    "https://i.natgeofe.com/n/560b293d-80b2-4449-ad6c-036a249d46f8/rio-de-janeiro-travel_2x3.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/London_Big_Ben_Phone_box.jpg/800px-London_Big_Ben_Phone_box.jpg",
  ];

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                "Where would you like to go?",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 10.0,
            ),
            AppLargeText(text: "  Discover"),
            SizedBox(
              height: 180.0, // Set a fixed height for the CarouselSlider
              child: CarouselSlider.builder(
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, int index, _) {
                  return Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.8,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            AppLargeText(text: "  Top Destinations"),
            const SizedBox(
              height: 10.0,
            ),
            CarouselSlider.builder(
              itemCount: imageUrls1.length,
              itemBuilder: (BuildContext context, int index, _) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      
                      MaterialPageRoute(builder: (context) => PlanningPage(index: index,)),
                    );
                    print(index);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(imageUrls1[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                enlargeCenterPage: false,
                aspectRatio: 4 / 2.5,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.38,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            AppLargeText(text: "  Exclusive Hotels"),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              children: List.generate(hotels.length, (index) {
                Hotel hotel = hotels[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 135,
                    width: double.infinity,
                    child: Card(
                      elevation: 0.4,
                      color: const Color.fromARGB(255, 239, 246, 251),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          // Handle tap event
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  hotel.imageUrl,
                                  height: double.infinity,
                                  width: 130,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      hotel.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(hotel.name),
                                    const SizedBox(height: 10),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow.shade700,
                                          size: 14,
                                        ),
                                        Text(
                                          hotel.rating.toString(),
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        const Spacer(),
                                        RichText(
                                          text: TextSpan(
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                            ),
                                            text: "\₹${hotel.price}",
                                            children: const [
                                              TextSpan(
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                text: "/ Person",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
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
         if (index == 1) {
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: SearchPage(),
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
            end:  Offset.zero,
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
