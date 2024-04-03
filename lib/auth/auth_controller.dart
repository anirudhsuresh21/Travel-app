import 'package:flutter/material.dart';

class RoastChick {
  final String FoodImage;
  final String Foodname;
  final String ShortDesc;
  final String Description;
  final double Price;

  RoastChick({
    required this.FoodImage,
    required this.Foodname,
    required this.ShortDesc,
    required this.Description,
    required this.Price,
  });
}

List<RoastChick> RoastedChicken = [
  RoastChick(
    FoodImage: 'https://example.com/roasted_chicken.jpg',
    Foodname: 'Roasted Chicken',
    ShortDesc: "Grilled and delicious",
    Description:
        "Indulge in the succulent delight of our Roasted Chicken. This dish features tender chicken marinated with a blend of savory spices and grilled to perfection. Each bite promises a burst of flavors, making it a truly delightful experience. Savor the rich taste and juiciness that defines this classic dish. Perfect for those who appreciate the art of grilling and enjoy the simplicity of a well-seasoned roasted chicken.",
    Price: 400.0,
  ),
];

List<RoastChick> DumBiryani = [
  RoastChick(
    FoodImage: 'https://example.com/dum_biryani.jpg',
    Foodname: 'Dum Biryani',
    ShortDesc: "Aromatic and flavorful",
    Description:
        "Transport your taste buds to the streets of India with our Dum Biryani. Immerse yourself in the enticing aroma of basmati rice, infused with a medley of aromatic spices and herbs. This classic dish features layers of marinated meat, slow-cooked to perfection, creating a symphony of flavors. The Dum Biryani is a celebration of traditional cooking techniques and culinary expertise, offering a delectable experience that captures the essence of Indian cuisine.",
    Price: 300.0,
  ),
];

List<RoastChick> Cake = [
  RoastChick(
    FoodImage: 'https://example.com/cake.jpg',
    Foodname: 'Cake',
    ShortDesc: "Moist and delightful",
    Description:
        "Satisfy your sweet cravings with our delightful Cake. This moist and fluffy dessert is a heavenly treat for your taste buds. Enjoy the perfect balance of sweetness and richness as you indulge in each forkful. Topped with a velvety layer of creamy frosting, our Cake is a celebration of sweetness and simplicity. Whether it's a special occasion or a casual craving, our Cake is sure to bring joy to your dessert moments.",
    Price: 250.0,
  ),
];

List<RoastChick> ChocolateCupcakes = [
  RoastChick(
    FoodImage: 'https://example.com/chocolate_cupcakes.jpg',
    Foodname: 'Chocolate Cupcakes',
    ShortDesc: "Rich and indulgent",
    Description:
        "Dive into the world of indulgence with our rich Chocolate Cupcakes. These decadent treats are a chocolate lover's dream, featuring moist and tender cupcakes infused with the finest cocoa. Topped with a velvety chocolate ganache, each bite is a blissful experience of intense chocolate flavor. Perfect for special occasions or a delightful dessert anytime, our Chocolate Cupcakes are a heavenly delight that will satisfy your sweet cravings.",
    Price: 150.0,
  ),
];

List<RoastChick> ChocoMousse = [
  RoastChick(
    FoodImage: 'https://example.com/chocolate_cupcakes.jpg',
    Foodname: 'Chocolate Cupcakes',
    ShortDesc: "Rich and indulgent",
    Description:
        "Dive into the world of indulgence with our rich Chocolate Cupcakes. These decadent treats are a chocolate lover's dream, featuring moist and tender cupcakes infused with the finest cocoa. Topped with a velvety chocolate ganache, each bite is a blissful experience of intense chocolate flavor. Perfect for special occasions or a delightful dessert anytime, our Chocolate Cupcakes are a heavenly delight that will satisfy your sweet cravings.",
    Price: 150.0,
  ),
];

class Details extends StatefulWidget {
  final String food;

  const Details({Key? key, required this.food}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  List<RoastChick> getfoodData(String foodName) {
    switch (foodName) {
      case 'Roasted':
        return RoastedChicken;

      case 'Pink':
        return Cake;

      case 'Biryani':
        return DumBiryani;

      case 'Cupcake':
        return ChocolateCupcakes;

      case 'Mousse':
        return ChocoMousse;

      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    List<RoastChick> foodData = getfoodData(widget.food);

    return Scaffold(
      body: ListView.builder(
        itemCount: foodData.length,
        itemBuilder: (context, index) {
          RoastChick data = foodData[index];

          return Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                ),
                Image.asset(
                  data.FoodImage,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 15.0),
                Text(
                  data.Foodname,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  data.ShortDesc,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  data.Description,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      "Delivery Time",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Icon(Icons.alarm, color: Colors.black54),
                    SizedBox(width: 5.0),
                    Text(
                      "30 min",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      "₹${data.Price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (a > 1) {
                          setState(() {
                            a--;
                          });
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      a.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          a++;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Implement add to cart functionality
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
