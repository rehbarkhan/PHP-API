import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Future connect() async {
    print('Button Preseend');
    final connection = await MySqlConnection.connect(ConnectionSettings(
        host: '192.168.0.107',
        port: 3306,
        user: 'root',
        password: '',
        db: 'flutter'));
    var result = await connection.query('select post_header from post');
    for (var row in result) {
      print(row[0]);
    }
    connection.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cool')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.slideshow),
        onPressed: connect,
      ),
    );
  }
}
