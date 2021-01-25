import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xff2b3044),
      ),
      child: Icon(
        Icons.add,
        size: 35.0,
        color: const Color(0xff616e7a),
      ),
    );
  }
}
