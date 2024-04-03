class Hotel {
  final String imageUrl;
  final String name;
  final double rating;
  final double price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.price,
  });
}

List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/hotel5.jpeg',
    name: 'Luxury Palace',
    rating: 4.8,
    price: 5000.0,
  ),
  Hotel(
    imageUrl: 'assets/hotel6.jpg',
    name: 'Golden Sands Resort',
    rating: 4.2,
    price: 2000.0,
  ),
  Hotel(
    imageUrl: 'assets/hotel7.jpg',
    name: 'Palm Oasis Hotel',
    rating: 4.5,
    price: 3000.0,
  ),
  Hotel(
    imageUrl: 'assets/hotel8.jpeg',
    name: 'Ocean View Hotel',
    rating: 4.3,
    price: 3100.0,
  ),
  Hotel(
    imageUrl: 'assets/hotel9.jpg',
    name: 'City Lights Inn',
    rating: 4.1,
    price: 7000.0,
  ),
  Hotel(
    imageUrl: 'assets/germanyhotel.jpg',
    name: 'Elegant Residency',
    rating: 4.7,
    price:6000.0,
    ),
];

