import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.redAccent,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
        child: const Align(
            child: Text(
          'This is not a text',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        )),
      ),
    );
  }
}
