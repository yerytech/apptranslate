import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pages/pages.dart';


void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Translate',
      home: Scaffold(
       
        body: HomePage()
      ),
    );
  }
}