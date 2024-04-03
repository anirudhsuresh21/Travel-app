// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:FindAWay/mongo.dart';
// // import 'package:FindAWay/models/login_model.dart';
// import 'package:FindAWay/pages/homepage.dart';
// import 'package:FindAWay/pages/registration.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';

// // class UserData {
// //   final String firstname;
// //   final String secondname;
// //   final String email;
// //   final String password;

// //   UserData({
// //     required this.firstname,
// //     required this.secondname,
// //     required this.email,
// //     required this.password,
// //   });


// // factory UserData.fromJson(Map<String, dynamic> json) {
// //     return UserData(
// //       firstname: json['fname'],
// //       secondname: json['lname'] ,
// //       email: json['email'],
// //       password: json['password'],
// //     );
// //   }
// // }


// class UpdateDataPage extends StatefulWidget {
//   const UpdateDataPage({Key? key}) : super(key: key);

//   @override
//   State<UpdateDataPage> createState() => _UpdateDataPageState();
// }

// class _UpdateDataPageState extends State<UpdateDataPage> {
//   final _formKey = GlobalKey<FormState>();
//   // var db = new MySql();

//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();


//   @override
//   Widget build(BuildContext context){
//     //email field
//     final emailField = TextFormField(
//       autofocus: false,
//       controller: emailController,
//       keyboardType: TextInputType.emailAddress,
//       // validator: ,
//       onSaved: (value){
//         emailController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: const Icon(Icons.mail),
//         contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Email",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),

//         )
      
//       ),
//     );


//     final passwordField = TextFormField(
//       autofocus: false,
//       controller: passwordController,
//       obscureText: true,
//       // keyboardType: TextInputType.emailAddress,
//       // validator: ,
//       onSaved: (value){
//         passwordController.text = value!;
//       },
//       textInputAction: TextInputAction.done,
//       decoration: InputDecoration(
//         prefixIcon: const Icon(Icons.vpn_key),
//         contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Password",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
          
//         )
      
//       ),
//     );
  
//     final loginButton = Material(
//       elevation: 5,
//       borderRadius: BorderRadius.circular(30),
//       color: Colors.blue[400],
//       child: MaterialButton(
//         padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//         minWidth: MediaQuery.of(context).size.width,
//        onPressed: () {
//         login(emailController.text,passwordController.text, context);
//             // Navigator.push(
//             //   context,
//             //   PageRouteBuilder(
//             //     pageBuilder: (context, animation, secondaryAnimation) {
//             //       return const HomePage();
//             //     },
//             //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             //       return FadeTransition(
//             //         opacity: animation,
//             //         child: child,
//             //       );
//             //     },
//             //      transitionDuration: Duration(milliseconds: 500),
//             //   )
//             // );
//          } ,
//         child: const Text(
//           'Login',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold
//           ),
//         ),
//       ),

//     );
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             color: Colors.white,
//             child: Padding( 
//               padding: const EdgeInsets.all(36.0),
//               child: Form(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,

//                   children: <Widget>[
//                     SizedBox(
//                       height: 300,
//                       child: Image.asset("./assets/Advanture1.png",
//                       fit:  BoxFit.contain)
//                     ),
//                     const SizedBox(height: 45,),
//                     emailField,
//                     const SizedBox(height: 45,),
//                     passwordField,
//                     const SizedBox(height: 45,),
//                     loginButton,
//                     const SizedBox(height: 45,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget> [
//                         const Text("Don't have an Account?",style: TextStyle(
//                           fontFamily: 'JosefinSans',
//                         ),),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           const Registration()));
//                           },
//                           child: Text(
//                             "SignUp",
//                             style: TextStyle(
//                               color: Colors.blue[400],
//                               fontWeight: FontWeight.bold,
//                               fontSize: 15),

//                           ),
//                         )
//                       ]
//                     )
//                   ],
//                 ) 

//                 ),
//           ),
//           ),
//         ),
//       ),
//     );


   

//   }