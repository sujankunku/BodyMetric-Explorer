import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      // appBarTheme: const AppBarTheme(
      //   color: Color.fromRGBO(10, 13, 34, 1),,

      home: const MyApp(),
      routes: {
        "/initial": (context) => const MyApp(),
      },
    ),
  );
}
