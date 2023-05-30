import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/home_page.dart';

void main() async {

  await Hive.initFlutter();

  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final Map<int, Color> color =
    {
      50:Color.fromRGBO(24, 18, 43 ,.1),
      100:Color.fromRGBO(24, 18, 43, .2),
      200:Color.fromRGBO(24, 18, 43, .3),
      300:Color.fromRGBO(24, 18, 43, .4),
      400:Color.fromRGBO(24, 18, 43, .5),
      500:Color.fromRGBO(24, 18, 43, .6),
      600:Color.fromRGBO(24, 18, 43, .7),
      700:Color.fromRGBO(24, 18, 43, .8),
      800:Color.fromRGBO(24, 18, 43, .9),
      900:Color.fromRGBO(24, 18, 43, 1),
    };

    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xff18122B, color),
      ),
      home: const HomePage(),
    );
  }
}
