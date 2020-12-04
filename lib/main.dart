import 'package:flutter/material.dart';

import 'category.dart';

const categoryName = 'Cake';
const categoryIcon = Icons.cake;
const categoryColor = Colors.green;

/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

/// This widget is the root of our application.
/// Currently, we just show one widget in our app.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          child: Category(
            name: categoryName,
            color: categoryColor,
            iconLocation: categoryIcon,
          ),
        ),
      ),
    );
  }
}
