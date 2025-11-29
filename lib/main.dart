import 'package:eraa_flutter/analog_clock.dart';
import 'package:eraa_flutter/appointments.dart';
import 'package:eraa_flutter/messenger_screen.dart';
import 'package:eraa_flutter/simple_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClockScreen(),
    );
  }
}