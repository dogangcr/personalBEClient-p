// ignore: file_names
// ignore: file_names
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_quiz/user.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class QuestionDetailswithUserInput extends StatefulWidget {
  User u;
  int index;

  QuestionDetailswithUserInput(this.u, this.index);

  @override
  _questionDetailsState createState() => _questionDetailsState(u, index);
}

class _questionDetailsState extends State<QuestionDetailswithUserInput> {
  User dr;
  int indexpar;
  _questionDetailsState(this.dr, this.indexpar);
  @override
  void initState() {
    this.indexpar = indexpar;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Options"),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                height: MediaQuery.of(context).size.height - 50,
                width: double.infinity,
                child: Column(children: <Widget>[
                  SizedBox(height: 15),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        if (dr.question != null)
                          Flexible(
                            child: Text(dr.question),
                          )
                      ]),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your input'),
                  ),
                ]))));
  }
}
