import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solid_test_app/utils/color_utils.dart';

class ColorGeneratorScreen extends StatefulWidget {
  @override
  _ColorGeneratorScreenState createState() => _ColorGeneratorScreenState();
}

class _ColorGeneratorScreenState extends State<ColorGeneratorScreen> {
  Color _currentColor = ColorUtils.getRandomColor();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          setState(() {
            _currentColor = ColorUtils.getRandomColor();
          });
        },
        child: Container(
          color: _currentColor,
          child: Center(
            child: Text(
              'Hey there',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
