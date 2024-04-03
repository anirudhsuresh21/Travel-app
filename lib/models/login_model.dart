class Place {
  final int index;
  final String name;
  final String imageUrl;
  final String description;
  final double rating;
  final String reviews;

  Place({
    required this.index,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.reviews,
  });
}
List<Place> places = [
  Place(
    index: 1,
    name: 'Azure Retreat',
    imageUrl: 'assets/dubaihotel1.jpg',
    description: 'Discover the tranquil serenity of Azure Retreat, nestled amidst the captivating landscapes of Iceland.',
    rating: 4.5,
    reviews: "4,500"
  ),
  Place(
    index: 2,
    name: 'Serenity Summit',
    imageUrl: 'assets/germanyhotel.jpg',
    description: 'Escape to the peaceful Serenity Summit, where lush green mountains provide the perfect backdrop for relaxation.',
    rating: 4.2,
    reviews: "3,200"
  ),
  Place(
    index: 3,
    name: 'Tranquil Sands',
    imageUrl: 'assets/san.jpg',
    description: 'Indulge in the ultimate relaxation at Tranquil Sands, where turquoise waters meet golden sands in a picturesque beach paradise.',
    rating: 4.8,
    reviews: "5,700"
  ),
  Place(
    index: 4,
    name: 'Rio Vista Oasis',
    imageUrl: 'assets/rio.jpg',
    description: 'Experience the serene beauty of Rio Vista Oasis, a breathtaking haven where nature\'s wonders await at every turn.',
    rating: 4.8,
    reviews: "6,800"
  ),
  Place(
    index: 5,
    name: 'Luminous Haven',
    imageUrl: 'assets/londonhotel.jpg',
    description: 'Unwind in the luminous haven of London, where vibrant city life meets the tranquil charm of beachside relaxation.',
    rating: 4.8,
    reviews: "4,900"
  ),
];