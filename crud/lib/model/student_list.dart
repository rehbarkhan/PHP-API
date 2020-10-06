import 'dart:convert';

List<StudentDetails> studentDetailsFromMap(String str) =>
    List<StudentDetails>.from(json.decode(str).map((x) => StudentDetails.fromMap(x)));

String studentDetailsToMap(List<StudentDetails> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class StudentDetails {
  StudentDetails({
    this.firstName,
    this.lastName,
    this.course,
  });

  String firstName;
  String lastName;
  String course;

  factory StudentDetails.fromMap(Map<String, dynamic> json) => StudentDetails(
        firstName: json["first_name"],
        lastName: json["last_name"],
        course: json["course"],
      );

  Map<String, dynamic> toMap() => {
        "first_name": firstName,
        "last_name": lastName,
        "course": course,
      };
}
