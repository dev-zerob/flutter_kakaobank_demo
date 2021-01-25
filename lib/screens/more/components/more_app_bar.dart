import 'package:flutter/material.dart';

class MoreAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "More",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black.withOpacity(0.4),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 6.0,
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'Setting',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
