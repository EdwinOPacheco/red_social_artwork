import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Location', style: TextStyle(
          fontSize: 60
        ),
      ),
    ); 
  }
}