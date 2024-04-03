import 'package:FindAWay/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:FindAWay/models/login_model.dart';
import 'package:FindAWay/pages/homepage.dart';
import 'package:FindAWay/pages/planningpage.dart';
import 'package:FindAWay/pages/selectdates.dart';
import 'package:FindAWay/widgets/app_text.dart';
import 'package:FindAWay/widgets/landing_page_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlanningPage extends StatefulWidget {

  final int index;
  const PlanningPage({Key? key, required this.index}) : super(key: key);

  @override
  State<PlanningPage> createState() => _PlanningPageState();
}

class _PlanningPageState extends State<PlanningPage> {
  Widget build(BuildContext context) {
    final Button1 = Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(30),
      color: Colors.transparent,
      shadowColor: Colors.grey[200],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 180.0,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(30),
        ),
       onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SelectDatesPage(index: widget.index)));
        },
        child: const Text(
          'Enter the Plan',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.normal),
        ),
      ),
    );

    final Button2 = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 180.0,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SearchPage()));
        },
        child: const Text(
          'View Other',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
    );
    Place placeAtIndex0 = places[widget.index]; // Use widget.index to access the index from the widget parameter
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(placeAtIndex0.imageUrl), // Replace 'assets/background_image.jpg' with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 500.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      placeAtIndex0.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      placeAtIndex0.description,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: RatingBarIndicator(
                      rating: placeAtIndex0.rating,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      '(${placeAtIndex0.rating}) ${placeAtIndex0.reviews} Reviews',
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const SizedBox(
                        width: 5.0,
                      ),
                      Button1,
                      Button2,
                      const SizedBox(
                        width: 5.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
