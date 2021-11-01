// ignore: file_names
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_quiz/user.dart';
import 'package:http/http.dart' as http;


// ignore: must_be_immutable
class QuestionDetails extends StatefulWidget {
  User u;
  int index;

  QuestionDetails(this.u,this.index) ;

  @override
  _questionDetailsState createState() => _questionDetailsState(u,index);

}

class _questionDetailsState extends State<QuestionDetails> {
  User dr;
  int indexpar;
  _questionDetailsState(this.dr,this.indexpar) ;
  @override
  void initState() {
    this.indexpar=indexpar;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Options"),
        ),
        body: ListView.builder(
      itemCount: dr.options.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(dr.options[index].options),onTap: () {print(dr.options[index].options);print(indexpar);},
        );
      },
    ));}






  }
