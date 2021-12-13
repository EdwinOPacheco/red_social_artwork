import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'package:red_social_artwork/ui/app.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  runApp(const App());
}
