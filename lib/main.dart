import 'package:flutter/material.dart';
import 'package:flutter_app_quiz/user.dart';
import 'package:flutter_app_quiz/API.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_app_quiz/QuestionDetails.dart';
import 'package:flutter_app_quiz/QuestionDetailswithUserInput.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Http App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListScreen(),
    );
  }
}

class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State {
  var users = List<User>.empty();

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(users[index].question),onTap: () {
              if(users[index].questionType=="1"){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionDetails(users[index],index),
                ));}
              if(users[index].questionType=="2"){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionDetailswithUserInput(users[index],index),
                    ));}


              },

            );
          },
        ));
  }
}

