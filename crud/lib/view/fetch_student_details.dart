import 'package:crud/model/student_list.dart';
import 'package:flutter/material.dart';
import '../services/insert_data.dart';

class FetchStudent extends StatefulWidget {
  @override
  _FetchStudentState createState() => _FetchStudentState();
}

class _FetchStudentState extends State<FetchStudent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          children: [
            Center(
                child: Text(
              'Student Lists',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  fetchDetails;
                },
                child: Text('Fetch Data'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 7, 10, 10),
              child: Divider(
                color: Colors.white,
              ),
            ),
            FutureBuilder(
              future: fetchDetails(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.lenght,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, itemCount) {
                      StudentDetails studentDetails = snapshot.data[itemCount];
                      return Text('${studentDetails.firstName}');
                    },
                  );
                }
                return CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
