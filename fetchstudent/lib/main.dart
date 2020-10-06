import 'package:fetchstudent/model/student_record_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<StudentRecordModel> list = [];
  fetchData() {
    print('hello world');

    // print(studentModel);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Student List')),
        body: Column(
          children: [
            RaisedButton(
              onPressed: () {
                // ignore: unnecessary_statements
                fetchData;
              },
              child: Text('Fetch'),
            ),
          ],
        ),
      ),
    );
  }
}
