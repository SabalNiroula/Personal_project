import 'package:creating_custom_widget/unit.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

/// Converter screen where users can input amounts to convert.
///
/// Currently, it just displays a list of mock units.
///
/// While it is named ConverterRoute, a more apt name would be ConverterScreen,
/// because it is responsible for the UI at the route's destination.

class ConverterRoute extends StatefulWidget {
  final List<Unit> units;
  final Color color;

  /// This [ConverterRoute] requires the color and units to not be null.
  const ConverterRoute({@required this.units, @required this.color})
      : assert(color != null),
        assert(units != null);

  @override
  _ConverterRouteState createState() => _ConverterRouteState();
}

class _ConverterRouteState extends State<ConverterRoute> {
  @override
  Widget build(BuildContext context) {
    final unitWidgets = widget.units.map((Unit unit) {
      ///The UI of how the color,Text,textSize,etc.. be is made from here
      return Container(
        color: widget.color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      ///Finally returning the ListView to populate the screen....
      children: unitWidgets,
    );
  }
}
