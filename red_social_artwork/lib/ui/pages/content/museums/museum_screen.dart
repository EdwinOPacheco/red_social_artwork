import 'package:flutter/material.dart';

class MuseumsScreen extends StatelessWidget {
  
  const MuseumsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Museums', style: TextStyle(
          fontSize: 60
        ),
      ),
    ); 
  }
}