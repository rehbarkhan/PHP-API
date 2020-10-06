class StudentRecordModel {
  String firstName;
  String lastName;
  String course;
  StudentRecordModel({this.firstName, this.lastName, this.course});
  StudentRecordModel.fromJson(Map<String, dynamic> parsedJson) {
    firstName = parsedJson['first_name'];
    lastName = parsedJson['last_name'];
    course = parsedJson['course'];
  }
}
