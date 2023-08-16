import 'package:flutter/material.dart';
import 'package:ussd_app/screens/main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ussd App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.blue,
        ),
        body: const MainScreen(),
      ),
    ),
  );
}
