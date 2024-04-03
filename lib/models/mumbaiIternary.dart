class ItineraryModel {
  final String day;
  final List<ItinerarySlot> slots;

  ItineraryModel({
    required this.day,
    required this.slots,
  });
}

class ItinerarySlot {
  final String time;
  final String activity;

  ItinerarySlot({
    required this.time,
    required this.activity,
  });
}
List<ItineraryModel> dubaiItinerary = [
  ItineraryModel(
    day: "Day 1",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Explore Dubai Mall"),
      ItinerarySlot(time: "11:00 AM", activity: "Burj Khalifa Observatory"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Pierchic"),
      ItinerarySlot(time: "3:00 PM", activity: "Visit Dubai Marina"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Al Dawaar Revolving Restaurant"),
    ],
  ),
  ItineraryModel(
    day: "Day 2",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Jumeirah Beach Residence (JBR)"),
      ItinerarySlot(time: "10:00 AM", activity: "Wild Wadi Water Park"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Shake Shack"),
      ItinerarySlot(time: "4:00 PM", activity: "Shopping at Mall of the Emirates"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Pierchic"),
    ],
  ),
  ItineraryModel(
    day: "Day 3",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Dubai Miracle Garden"),
      ItinerarySlot(time: "11:00 AM", activity: "Global Village"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Ravi Restaurant"),
      ItinerarySlot(time: "4:00 PM", activity: "Ski Dubai at Mall of the Emirates"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Zuma"),
    ],
  ),
  ItineraryModel(
    day: "Day 4",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at The Sum of Us"),
      ItinerarySlot(time: "10:00 AM", activity: "Dubai Creek Cruise"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at At.mosphere"),
      ItinerarySlot(time: "4:00 PM", activity: "Explore Old Dubai - Bastakiya District"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Arabian Tea House"),
    ],
  ),
  ItineraryModel(
    day: "Day 5",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Aquaventure Waterpark at Atlantis, The Palm"),
      ItinerarySlot(time: "12:00 PM", activity: "Lunch at Nobu"),
      ItinerarySlot(time: "2:00 PM", activity: "Relax at Jumeirah Beach"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Pierchic"),
    ],
  ),
  ItineraryModel(
    day: "Day 6",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Baker & Spice"),
      ItinerarySlot(time: "10:00 AM", activity: "Desert Safari"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Al Hadheerah, Bab Al Shams Desert Resort"),
      ItinerarySlot(time: "4:00 PM", activity: "Sandboarding in the Desert"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Asado, Palace Downtown"),
    ],
  ),
  ItineraryModel(
    day: "Day 7",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Visit The Palm Jumeirah - Atlantis, The Palm"),
      ItinerarySlot(time: "12:00 PM", activity: "Lunch at Ossiano"),
      ItinerarySlot(time: "3:00 PM", activity: "Shopping at Dubai Mall"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Pierchic"),
    ],
  ),
];
List<ItineraryModel> germanyItinerary = [
  ItineraryModel(
    day: "Day 1",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Explore Brandenburg Gate"),
      ItinerarySlot(time: "11:00 AM", activity: "Visit Berlin Wall East Side Gallery"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Currywurst Museum"),
      ItinerarySlot(time: "3:00 PM", activity: "Museum Island Tour"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Zur letzten Instanz"),
    ],
  ),
  ItineraryModel(
    day: "Day 2",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Schwarzes Café"),
      ItinerarySlot(time: "10:00 AM", activity: "Pergamon Museum Visit"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Café Einstein Stammhaus"),
      ItinerarySlot(time: "4:00 PM", activity: "Explore Charlottenburg Palace"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Zur Haxe"),
    ],
  ),
  ItineraryModel(
    day: "Day 3",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Visit Topography of Terror Documentation Center"),
      ItinerarySlot(time: "11:00 AM", activity: "Checkpoint Charlie Museum"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Lutter & Wegner"),
      ItinerarySlot(time: "3:00 PM", activity: "Explore Tiergarten Park"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Renger-Patzsch"),
    ],
  ),
  ItineraryModel(
    day: "Day 4",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at House of Small Wonder"),
      ItinerarySlot(time: "10:00 AM", activity: "Potsdam Day Trip - Sanssouci Palace"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Minsk Restaurant"),
      ItinerarySlot(time: "4:00 PM", activity: "Visit Dutch Quarter"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Restaurant Brandscheidt"),
    ],
  ),
  ItineraryModel(
    day: "Day 5",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Explore Dresden Old Town"),
      ItinerarySlot(time: "11:00 AM", activity: "Visit Zwinger Palace"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Sophienkeller"),
      ItinerarySlot(time: "3:00 PM", activity: "Dresden Frauenkirche"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Pulverturm"),
    ],
  ),
  ItineraryModel(
    day: "Day 6",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Zum Pulvermacher"),
      ItinerarySlot(time: "10:00 AM", activity: "Neuschwanstein Castle Day Trip"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Gasthof Neuschwanstein"),
      ItinerarySlot(time: "4:00 PM", activity: "Explore Hohenschwangau Village"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Ritterstuben"),
    ],
  ),
  ItineraryModel(
    day: "Day 7",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Nuremberg Day Trip - Nuremberg Castle"),
      ItinerarySlot(time: "12:00 PM", activity: "Lunch at Bratwurst Röslein"),
      ItinerarySlot(time: "2:00 PM", activity: "Visit Nuremberg Old Town"),
      ItinerarySlot(time: "4:00 PM", activity: "Explore Documentation Center Nazi Party Rally Grounds"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Albrecht-Dürer-Stube"),
    ],
  ),
];
List<ItineraryModel> sanFranciscoItinerary = [
  ItineraryModel(
    day: "Day 1",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Explore Golden Gate Park"),
      ItinerarySlot(time: "11:00 AM", activity: "Golden Gate Bridge Visit"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Tartine Bakery"),
      ItinerarySlot(time: "3:00 PM", activity: "Visit Alcatraz Island"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Fisherman's Wharf"),
    ],
  ),
  ItineraryModel(
    day: "Day 2",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Mama's"),
      ItinerarySlot(time: "10:00 AM", activity: "Explore Chinatown"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at R&G Lounge"),
      ItinerarySlot(time: "4:00 PM", activity: "Visit Coit Tower"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at The House"),
    ],
  ),
  ItineraryModel(
    day: "Day 3",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Visit San Francisco Museum of Modern Art (SFMOMA)"),
      ItinerarySlot(time: "11:00 AM", activity: "Explore Yerba Buena Gardens"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at The Slanted Door"),
      ItinerarySlot(time: "3:00 PM", activity: "Stroll along Embarcadero"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Waterbar"),
    ],
  ),
  ItineraryModel(
    day: "Day 4",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Craftsman and Wolves"),
      ItinerarySlot(time: "10:00 AM", activity: "Hike in Muir Woods National Monument"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Pelican Inn"),
      ItinerarySlot(time: "4:00 PM", activity: "Visit Marin Headlands"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Sausalito Seahorse"),
    ],
  ),
  ItineraryModel(
    day: "Day 5",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Explore California Academy of Sciences"),
      ItinerarySlot(time: "11:00 AM", activity: "Golden Gate Park Botanical Garden"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Beach Chalet"),
      ItinerarySlot(time: "3:00 PM", activity: "Visit Lands End"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Cliff House"),
    ],
  ),
  ItineraryModel(
    day: "Day 6",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Sweet Maple"),
      ItinerarySlot(time: "10:00 AM", activity: "Explore Haight-Ashbury District"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Magnolia Gastropub & Brewery"),
      ItinerarySlot(time: "4:00 PM", activity: "Visit Painted Ladies at Alamo Square"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Nopa"),
    ],
  ),
  ItineraryModel(
    day: "Day 7",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Golden Gate Bridge Bike Ride"),
      ItinerarySlot(time: "12:00 PM", activity: "Lunch at Greens Restaurant"),
      ItinerarySlot(time: "2:00 PM", activity: "Explore Presidio of San Francisco"),
      ItinerarySlot(time: "4:00 PM", activity: "Visit Palace of Fine Arts"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Gary Danko"),
    ],
  ),
];
List<ItineraryModel> rioDeJaneiroItinerary = [
  ItineraryModel(
    day: "Day 1",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Visit Christ the Redeemer"),
      ItinerarySlot(time: "11:00 AM", activity: "Explore Sugarloaf Mountain"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Confeitaria Colombo"),
      ItinerarySlot(time: "3:00 PM", activity: "Copacabana Beach Relaxation"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Aprazível"),
    ],
  ),
  ItineraryModel(
    day: "Day 2",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Café do Alto"),
      ItinerarySlot(time: "10:00 AM", activity: "Explore Tijuca National Park"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Bar da Tia"),
      ItinerarySlot(time: "4:00 PM", activity: "Visit Santa Teresa Neighborhood"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Bar do Mineiro"),
    ],
  ),
  ItineraryModel(
    day: "Day 3",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Hang Gliding at São Conrado Beach"),
      ItinerarySlot(time: "11:00 AM", activity: "Relax at Leblon Beach"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Jobi"),
      ItinerarySlot(time: "3:00 PM", activity: "Explore Ipanema Hippie Fair"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Garota de Ipanema"),
    ],
  ),
  ItineraryModel(
    day: "Day 4",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Confeitaria Colombo"),
      ItinerarySlot(time: "10:00 AM", activity: "Visit Rodrigo de Freitas Lagoon"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Quiosque Palaphita Kitch"),
      ItinerarySlot(time: "4:00 PM", activity: "Explore Pedra do Arpoador"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Zaza Bistrô Tropical"),
    ],
  ),
  ItineraryModel(
    day: "Day 5",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Visit Niterói - MAC Museum"),
      ItinerarySlot(time: "12:00 PM", activity: "Lunch at Cantinho de Niterói"),
      ItinerarySlot(time: "2:00 PM", activity: "Relax at Itacoatiara Beach"),
      ItinerarySlot(time: "6:00 PM", activity: "Explore Parque da Cidade"),
      ItinerarySlot(time: "8:00 PM", activity: "Dinner at Olimpo"),
    ],
  ),
  ItineraryModel(
    day: "Day 6",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Café Lamas"),
      ItinerarySlot(time: "10:00 AM", activity: "Visit Maracanã Stadium"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Bar Urca"),
      ItinerarySlot(time: "4:00 PM", activity: "Explore Selarón Steps"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Pergula"),
    ],
  ),
  ItineraryModel(
    day: "Day 7",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Hang out at Joatinga Beach"),
      ItinerarySlot(time: "12:00 PM", activity: "Lunch at Cervantes"),
      ItinerarySlot(time: "2:00 PM", activity: "Visit Pedra Bonita"),
      ItinerarySlot(time: "4:00 PM", activity: "Explore Prainha Beach"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Aprazível"),
    ],
  ),
];
List<ItineraryModel> londonItinerary = [
  ItineraryModel(
    day: "Day 1",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Visit the British Museum"),
      ItinerarySlot(time: "11:00 AM", activity: "Explore Covent Garden"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Dishoom"),
      ItinerarySlot(time: "3:00 PM", activity: "Stroll in Trafalgar Square"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at The Ivy"),
    ],
  ),
  ItineraryModel(
    day: "Day 2",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at The Breakfast Club"),
      ItinerarySlot(time: "10:00 AM", activity: "Visit the Tower of London"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Borough Market"),
      ItinerarySlot(time: "4:00 PM", activity: "Explore Tower Bridge"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Duck & Waffle"),
    ],
  ),
  ItineraryModel(
    day: "Day 3",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Explore the Victoria and Albert Museum"),
      ItinerarySlot(time: "11:00 AM", activity: "Visit the Natural History Museum"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Sketch"),
      ItinerarySlot(time: "3:00 PM", activity: "Stroll in Hyde Park"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Nobu"),
    ],
  ),
  ItineraryModel(
    day: "Day 4",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Granger & Co."),
      ItinerarySlot(time: "10:00 AM", activity: "Explore the British Library"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Regent's Park"),
      ItinerarySlot(time: "4:00 PM", activity: "Visit the Sherlock Holmes Museum"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Gordon Ramsay Bar & Grill"),
    ],
  ),
  ItineraryModel(
    day: "Day 5",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Visit the National Gallery"),
      ItinerarySlot(time: "11:00 AM", activity: "Explore Leicester Square"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Flat Iron Square"),
      ItinerarySlot(time: "3:00 PM", activity: "Stroll in St. James's Park"),
      ItinerarySlot(time: "6:00 PM", activity: "Dinner at Rules"),
    ],
  ),
  ItineraryModel(
    day: "Day 6",
    slots: [
      ItinerarySlot(time: "8:00 AM", activity: "Breakfast at Dishoom"),
      ItinerarySlot(time: "10:00 AM", activity: "Visit the Tate Modern"),
      ItinerarySlot(time: "1:00 PM", activity: "Lunch at Southbank Centre Food Market"),
      ItinerarySlot(time: "4:00 PM", activity: "Explore the Millennium Bridge"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Sketch"),
    ],
  ),
  ItineraryModel(
    day: "Day 7",
    slots: [
      ItinerarySlot(time: "9:00 AM", activity: "Explore the Science Museum"),
      ItinerarySlot(time: "12:00 PM", activity: "Lunch at The Ledbury"),
      ItinerarySlot(time: "2:00 PM", activity: "Shopping on Oxford Street"),
      ItinerarySlot(time: "4:00 PM", activity: "Visit the Shard"),
      ItinerarySlot(time: "7:00 PM", activity: "Dinner at Dishoom"),
],),
];