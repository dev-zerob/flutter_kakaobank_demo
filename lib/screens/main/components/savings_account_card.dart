import 'package:flutter/material.dart';

class SavingsAccountCard extends StatelessWidget {
  final Color color;

  const SavingsAccountCard({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 160.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Savings Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '1234-56-78901112',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  size: 25.0,
                  color: Colors.black.withOpacity(0.4),
                ),
              ],
            ),
            Text(
              '\$ 1,234,567',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
