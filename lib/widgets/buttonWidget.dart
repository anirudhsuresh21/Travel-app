import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String buttonText; // Parameter for the button text
  final IconData icon; // Parameter for the button icon

  const MyButton({
    Key? key,
    required this.buttonText, // Initialize the parameter
    required this.icon, // Initialize the parameter
  }) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  Color? buttonColor = Colors.grey[100]; // Initial color

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(50),
      color: buttonColor, // Use the dynamic color
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 330.0,
        onPressed: () {
          setState(() {
            // Change the color when pressed
            buttonColor = Colors.red; // Change to the desired color
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(widget.icon), // Add the specified icon
            const SizedBox(width: 15), // Add spacing between icon and text

            Text(widget.buttonText), // Use the specified button text
          ],
        ),
      ),
    );
  }
}
