import 'package:flutter/material.dart';

class MainAdCard extends StatelessWidget {
  final String title;
  final String content;

  const MainAdCard({Key key, this.title, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  content,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
