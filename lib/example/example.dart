import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ConditionalBuilder(
          condition: true,
          builder: (context) => Center(child: Text('this is true')),
          fallback: (context) => Center(child: Text('this is not true')),
        ),
      ),
    );
  }
}
