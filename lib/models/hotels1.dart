class Hotel1 {
  final String imageUrl;
  final String name;
  final String description;
  final double rating;
  final double price;

  Hotel1({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.rating,
    required this.price,
  });
}


List<Hotel1> nyc = [
  Hotel1(
    imageUrl: './assets/nycbus.jpg',
    name: 'NYC Bus Tour',
    description: "Tour Of New York City",
    rating: 4.5,
    price: 1000.0,
  ),
  Hotel1(
    imageUrl: './assets/nycnight.jpg',
    name: 'Night Life',
    description: "Enjoy the Night Life of NYC",
    rating: 4.0,
    price: 800.0,
  ),
  Hotel1(
    imageUrl: './assets/nyc.jpg',
    name: 'Statue of Liberty Tour',
    description: "Explore the iconic Statue of Liberty",
    rating: 4.8,
    price: 1020.0,
  ),
  Hotel1(
    imageUrl: './assets/nyc1.jpeg',
    name: 'Central Park Experience',
    description: "Discover the beauty of Central Park",
    rating: 4.3,
    price: 900.0,
  ),
];


List<Hotel1> australia = [
  Hotel1(
    imageUrl: './assets/opera.jpeg',
    name: 'Sydney Opera House Tour',
    description: "Experience the iconic Sydney Opera House",
    rating: 4.7,
    price: 1500.0,
  ),
  Hotel1(
    imageUrl: './assets/great_barrier_reef.jpg',
    name: 'Great Barrier Reef Dive',
    description: "Dive into the breathtaking Great Barrier Reef",
    rating: 4.9,
    price: 2000.0,
  ),
  Hotel1(
    imageUrl: './assets/uluru.jpg',
    name: 'Uluru Adventure',
    description: "Embark on an adventure to Uluru (Ayers Rock)",
    rating: 4.6,
    price: 1800.0,
  ),
  Hotel1(
    imageUrl: './assets/melburne.jpg',
    name: 'Melbourne City Tour',
    description: "Explore the vibrant city of Melbourne",
    rating: 4.4,
    price: 1020.0,
  ),
];


List<Hotel1> japan = [
  Hotel1(
    imageUrl: './assets/tokyo.jpg',
    name: 'Tokyo Tower',
    description: "Iconic Tower and Landmark",
    rating: 4.6,
    price: 1500.0,
  ),
  Hotel1(
    imageUrl: './assets/fuji.jpg',
    name: 'Mount Fuji',
    description: "Iconic Mountain and Volcano",
    rating: 4.9,
    price: 2050.0,
  ),
  Hotel1(
    imageUrl: './assets/himeji.jpg',
    name: 'Himeji Castle',
    description: "Historic Castle and UNESCO Site",
    rating: 4.7,
    price: 1800.0,
  ),
];

List<Hotel1> singapore = [
  Hotel1(
    imageUrl: './assets/mari.jpg',
    name: 'Marina Bay Sands',
    description: "Iconic hotel with stunning views",
    rating: 4.8,
    price: 2500.0,
  ),
  Hotel1(
    imageUrl: './assets/98.jpg',
    name: 'Gardens by the Bay Hotel',
    description: "Luxury hotel near Gardens by the Bay",
    rating: 4.6,
    price: 2000.0,
  ),
  Hotel1(
    imageUrl: './assets/sen.jpg',
    name: 'Sentosa Resort & Spa',
    description: "Relaxing resort on Sentosa Island",
    rating: 4.5,
    price: 1800.0,
  ),
];
