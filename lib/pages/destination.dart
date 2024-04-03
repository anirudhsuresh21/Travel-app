import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:FindAWay/models/hotels1.dart';
import 'package:FindAWay/widgets/landing_page_text.dart';

class CityData {
  final String image;
  final String cityName;
  final String todoDescription;
  final String description;

  CityData({
    required this.image,
    required this.cityName,
    required this.todoDescription,
    required this.description,
  });
}

List<CityData> japanData = [
  CityData(
    image: "https://example.com/japan_image.jpg", // Replace with the image URL for Japan
    cityName: 'Japan', // Update the city name to Japan
    todoDescription: "Explore the rich culture and natural beauty of Japan.", // Update the todo description
    description: "Japan, known for its unique blend of ancient traditions and modern innovation, offers a diverse range of experiences from historic temples and serene gardens to bustling cities and scenic landscapes.", // Update the city description
  ),
];


List<CityData> singaporeData = [
  CityData(
    image: "https://c4.wallpaperflare.com/wallpaper/219/894/458/5bd329b2b5293-wallpaper-thumb.jpg",
    cityName: 'Singapore',
    todoDescription: "Explore the vibrant culture and beautiful attractions of Singapore.",
    description: "Singapore is a melting pot of cultures, known for its stunning skyline, lush gardens, and diverse culinary scene. It offers a perfect blend of modernity and tradition.",
  ),
];

List<CityData> australiaData = [
  CityData(
    image: "https://example.com/australia_image.jpg", // Replace with the image URL for Australia
    cityName: 'Australia', // Update the city name to Australia
    todoDescription: "Explore the diverse landscapes and natural wonders of Australia.", // Update the todo description
    description: "Australia, known for its stunning landscapes and natural wonders, offers a diverse range of experiences from the iconic Sydney Opera House and Great Barrier Reef to the vast Outback and beautiful beaches.", // Update the city description
  ),
];


List<CityData> nycData = [
  CityData(
    image: "https://c4.wallpaperflare.com/wallpaper/219/894/458/5bd329b2b5293-wallpaper-thumb.jpg",
    cityName: 'New York City',
    todoDescription: "Experience the hustle and bustle of New York City.",
    description: "New York City, the city that never sleeps, is famous for its iconic skyline, Broadway shows, world-class museums, and diverse neighborhoods. It's a melting pot of cultures and a hub for arts, entertainment, and finance.",
  ),
];

class DestinationPage extends StatefulWidget {
  final String dest;

  const DestinationPage({Key? key, required this.dest}) : super(key: key);

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  List<CityData> getCityData(String destination) {
    switch (destination.toLowerCase()) {
      case 'japan':
        return japanData;
      case 'singapore':
        return singaporeData;
      case 'australia':
        return australiaData;
      case 'nyc':
        return nycData;
      default:
        return [];
    }
  }

  List<Hotel1> getTodoData(String destination) {
    switch (destination.toLowerCase()) {
      case 'japan':
        return japan;
      case 'singapore':
        return singapore;
      case 'australia':
        return australia;
      case 'nyc':
        return nyc;
      default:
        return [];
    }
  }

  List<String> getImageUrls(String destination) {
    switch (destination.toLowerCase()) {
      case 'australia':
        return [
         "./assets/aus1.jpg",
         "./assets/aus4.jpg",
         "./assets/aus3.jpg",
          "./assets/aus5.jpg",
          // Add more URLs as needed
        ];
      case 'singapore':
        return[
    "./assets/s1.jpg",
    "./assets/s2.jpg",
    "./assets/s3.jpg",
    "./assets/s4.jpg",


  ];
      case 'japan':
        return [
          "./assets/j1.jpg",
    "./assets/j2.jpg",
    "./assets/j3.jpg",
    "./assets/j4.jpg",
        ];
      case 'nyc':
      return [
          "./assets/ny1.jpg",
    "./assets/ny2.jpg",
    "./assets/ny4.jpg",
    "./assets/ny5.jpg",
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    List<CityData> cityData = getCityData(widget.dest);
    List<String> imageUrls = getImageUrls(widget.dest);
    List<Hotel1> todoData = getTodoData(widget.dest);

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
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 110),
                Padding(
                  padding: const EdgeInsets.only(top: 11, right: 20),
                  child: Text(
                    widget.dest,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                    ),
                    items: imageUrls.map((String imageUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Image.asset(
                              imageUrl,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Column(
                    children: cityData.map((CityData data) {
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.cityName,
                              style: GoogleFonts.poppins(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: .0,
                                ),
                                Expanded(
                                  child: Text(
                                    data.todoDescription,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0.0,
                                ),
                                Expanded(
                                  child: Text(
                                    data.description,
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            AppLargeText(text: "  Places to Visit"),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              children: List.generate(todoData.length, (index) {
                Hotel1 hotel = todoData[index];
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
                                    Text(hotel.description),
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
    );
  }
}
