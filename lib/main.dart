// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var categoryName = 'Cake';
  var categoryIcon = Icons.cake;
  var categoryColor = Colors.green;
  final rowHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
      ),
      body: Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            height: rowHeight,
            child: InkWell(
              ///What inkwell is do is that it have onTap which notify us when the list was tapped.
              borderRadius: BorderRadius.circular(rowHeight / 2),
              highlightColor: categoryColor,
              splashColor: categoryColor,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    'data',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ));
              },
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        categoryIcon,
                        size: 60.0,
                      ),
                    ),
                    Center(
                      child: Text(
                        categoryName,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    )
                  ],
                ),
              ),
            ),
            
          ),
        ),
      ),
    );
  }
}
