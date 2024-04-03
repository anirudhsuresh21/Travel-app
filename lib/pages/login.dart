import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:FindAWay/mongo.dart';
// import 'package:FindAWay/models/login_model.dart';
import 'package:FindAWay/pages/homepage.dart';
import 'package:FindAWay/pages/registration.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';




class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  // var db = new MySql();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context){
    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: ,
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

        )
      
      ),
    );


    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      // keyboardType: TextInputType.emailAddress,
      // validator: ,
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          
        )
      
      ),
    );
  
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue[400],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
       onPressed: () {
        login(emailController.text,passwordController.text, context);

         } ,
        child: const Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),

    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding( 
              padding: const EdgeInsets.all(36.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    SizedBox(
                      height: 300,
                      child: Image.asset("./assets/Advanture1.png",
                      fit:  BoxFit.contain)
                    ),
                    const SizedBox(height: 45,),
                    emailField,
                    const SizedBox(height: 45,),
                    passwordField,
                    const SizedBox(height: 45,),
                    loginButton,
                    const SizedBox(height: 45,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        const Text("Don't have an Account?",style: TextStyle(
                          fontFamily: 'JosefinSans',
                        ),),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Registration()));
                          },
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.bold,
                              fontSize: 15),

                          ),
                        )
                      ]
                    )
                  ],
                ) 

                ),
          ),
          ),
        ),
      ),
    );


   

  }
Future<void> login(String enteredUsername, String enteredPassword, BuildContext context) async {
  final Database db = await SqliteService().initializeDB();
  final List<Map<String, dynamic>> users = await db.query(
    'users6',
    where: 'email = ?',
    whereArgs: [enteredUsername],
  );

  if (users.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("User not found")),
    );
    return;
  }

  final Map<String, dynamic> user = users.first;
  final String storedPassword = user['password'] as String;

  if (enteredPassword == storedPassword) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Login successful")),
    );
    await db.update(
  'users6',
  {'status': false}, // Set the 'status' column to false for all rows
);
    // Update status to true
    await db.update(
      'users6',
      {'status': true},
      where: 'email = ?',
      whereArgs: [enteredUsername],
    );

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Invalid username or password")),
    );
  }
}
}