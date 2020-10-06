import 'package:flutter/material.dart';
import '../services/insert_data.dart';
import '../view/fetch_student_details.dart';

class HomePage extends StatelessWidget {
  //Controller Declaration
  final TextEditingController first_name = new TextEditingController();
  final TextEditingController last_name = new TextEditingController();
  final TextEditingController course = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insert Data'),
      ),
      body: Column(
        children: [
          TextField(
            controller: first_name,
            decoration: InputDecoration(hintText: "First Name"),
          ),
          TextField(
            controller: last_name,
            decoration: InputDecoration(hintText: "Last Name"),
          ),
          TextField(
            controller: course,
            decoration: InputDecoration(hintText: "Course Name"),
          ),
          RaisedButton(
            onPressed: () =>
                register_student(first_name.text, last_name.text, course.text),
            child: Icon(Icons.add),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Getting called');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FetchStudent()));
        },
      ),
    );
  }
}
