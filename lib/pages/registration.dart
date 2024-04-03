

import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter_application_2/models/userdata_model.dart';
import 'package:FindAWay/pages/login.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';


class UserData {
  final String firstname;
  final String secondname;
  final String email;
  final String password;

  UserData({
    required this.firstname,
    required this.secondname,
    required this.email,
    required this.password,
  });
Map<String, dynamic> toJson() {
    return {
      'firstName': firstname,
      'lastName': secondname,
      'email': email,
      'password': password,
    };
  }
}
 
class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration>{

  final _formKey = GlobalKey<FormState>();

  
  final firstNameEditingController = TextEditingController();
  final secondNameEditingController = TextEditingController() ;
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController() ;


  @override
  Widget build(BuildContext context){


     final firstnameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.emailAddress,
      // validator: ,
      onSaved: (value){
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

        )
      
      ),
    );

    final secondnameField = TextFormField(
      autofocus: false,
      controller: secondNameEditingController,
      keyboardType: TextInputType.name,
      // validator: ,
      onSaved: (value){
        secondNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Second Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

        )
      
      ),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      // validator: ,
      onSaved: (value){
        emailEditingController.text = value!;
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
      controller: passwordEditingController,
      obscureText: true,
      // keyboardType: TextInputType.password,
      // validator: ,
      onSaved: (value){
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

        )
      
      ),
    );

    final confirmpasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      // keyboardType: TextInputType.password,
      // validator: ,
      onSaved: (value){
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

        )
      
      ),
    );

    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue[400],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          String fname = firstNameEditingController.text;
          String lname = secondNameEditingController.text;
          String email = emailEditingController.text;
          String password = passwordEditingController.text;
          String password1 = confirmPasswordEditingController.text;
          SaveData(fname, lname, email, password, password1, context);
        },
        child: const Text(
          'Sign Up',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),

    );
    // final passwordField = TextFormField(
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
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
                      height: 250,
                      child: Image.asset("./assets/Advanture1.png",
                      fit:  BoxFit.contain)
                    ),
                    const SizedBox(height: 20,),
                    firstnameField,
                    const SizedBox(height: 20,),
                    secondnameField,
                    const SizedBox(height: 20,),
                    emailField,
                    const SizedBox(height: 20,),
                    passwordField,
                    const SizedBox(height: 20,),
                    confirmpasswordField,
                    const SizedBox(height: 20,),
                    signupButton,
                    // const SizedBox(height: 20,),
                   
                  ],
                ) 

                ),
          ),
          ),
        ),
      ),
    );
  }


 Future<void> _createTable(Database db) async {
    await db.execute(
      '''
      CREATE TABLE IF NOT EXISTS users6 (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        firstname TEXT,
        secondname TEXT,
        email TEXT,
        password TEXT,
        status BOOLEAN
      )
      '''
    );
  }

    Future<void> _insertUser(Database db, String firstname, String secondname, String email, String password, bool status) async {
    await db.execute(
      '''
      INSERT INTO users6 (firstname, secondname, email, password, status) 
      VALUES (?, ?, ?, ?,?)
      ''',
      [firstname, secondname, email, password,status],
    );
  }

  Future<void> _saveData(String firstname, String secondname, String email, String password, String password1, BuildContext context) async {
  // Create or open the database
  final Database db = await openDatabase(
    join(await getDatabasesPath(), 'flutter.db'),
    version: 1,
    onCreate: (db, version) async {
      await _createTable(db); // Create the table when the database is first created
    },
  );

  // Create the table if it doesn't exist
  await _createTable(db);

  if (password == password1) {
    bool status = false;
    await _insertUser(db, firstname, secondname, email, password,status);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('User data saved to database')),
    );

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Passwords do not match')),
    );
  }
}

  Future<void> SaveData(String firstname, String secondname, String email, String password, String password1, BuildContext context) async {
    await _saveData(firstname, secondname, email, password, password1, context);
  }
}