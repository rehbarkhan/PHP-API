import 'dart:async';
//import 'dart:convert';
import '../model/student_list.dart';
import 'package:http/http.dart' as http;

//registering new student - Inserting data
Future<List> register_student(
    String first_name, String last_name, String course) async {
  var response =
      await http.post("http://192.168.0.107/studentinfo/action.php", body: {
    "action": "insert",
    "first_name": first_name,
    "last_name": last_name,
    "course": course
  });
  //var cool = json.decode(response.body); //print(cool);
}

Future<List<StudentDetails>> fetchDetails() async {
  var response = await http.post("http://192.168.0.107/studentinfo/fetch.php",
      body: {"action": "fetch"});
  return studentDetailsFromMap(response.body);
}

//first_name, last_name , course
