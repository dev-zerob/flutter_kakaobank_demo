import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: [
          Text(
            "Baza",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 6.0,
            ),
            decoration: BoxDecoration(
              color: const Color(0xff2b3044),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'My Account',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
          ),
          Spacer(),
          CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 18.0,
          ),
        ],
      ),
    );
  }
}
