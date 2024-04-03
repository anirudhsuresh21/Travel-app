class TravelData {
  final String hotelImage;
  final String flag;
  final double flightRates;
  final double hotelRates;
  final double miscellaneousRates;
  final String destination;

  TravelData({
    required this.hotelImage,
    required this.flag,
    required this.flightRates,
    required this.hotelRates,
    required this.miscellaneousRates,
    required this.destination,
  });
}

List<TravelData> dubaiData = [
  TravelData(
    hotelImage: './assets/hotel1.jpg',
    flag: "https://media.istockphoto.com/id/1180612997/photo/united-arab-emirates-flag.webp?b=1&s=170667a&w=0&k=20&c=7eOD3AIPF8yCaaL-Ql4jT0ZMcHFORVHaNVOGG9ET4PI=",
    flightRates: 20000.0,
    hotelRates: 12000.0,
    miscellaneousRates: 18000.0,
    destination: 'Dubai',
),
];

List<TravelData> germanyData = [
  TravelData(
    hotelImage: './assets/hotel2.jpg',
    flag: "https://t3.ftcdn.net/jpg/01/11/68/26/360_F_111682656_g63NR8Z16g8H8boPR3LK6J4VEbSv9oXg.jpg",
    flightRates: 120000.0,
    hotelRates: 20000.0,
    miscellaneousRates: 15000.0,
    destination: 'Germany',
  ),
];

List<TravelData> sanFranciscoData = [
  TravelData(
    hotelImage: './assets/hotel3.jpg',
    flag: "https://cdn.britannica.com/33/4833-004-828A9A84/Flag-United-States-of-America.jpg",
    flightRates: 100000.0,
    hotelRates: 17000.0,
    miscellaneousRates: 13000.0,
    destination: 'San\nFrancisco',
  ),
];

List<TravelData> rioDeJaneiroData = [
  TravelData(
    hotelImage: './assets/hotel4.jpeg',
    flag: "https://www.shutterstock.com/image-illustration/3d-illustration-flag-brazil-close-600nw-2020961387.jpg",
    flightRates: 90000.0,
    hotelRates: 6000.0,
    miscellaneousRates: 12000.0,
    destination: 'Rio',
  ),
];



List<TravelData> londonData = [
  TravelData(
    hotelImage: './assets/hotel1.jpeg',
    flag: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWUwQlCx96ecr98ZwZe1cBoo6j6vwYiEIUHg",
    flightRates: 75000.0,
    hotelRates: 25000.0,
    miscellaneousRates: 20000.0,
    destination: 'London',
  ),
];

