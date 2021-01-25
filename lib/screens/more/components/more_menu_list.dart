import 'package:flutter/material.dart';

class MoreMenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.phone,
                  size: 40.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Customer Service',
                  style: TextStyle(
                    fontSize: 9.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.lock,
                  size: 40.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Security',
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.add_alert,
                  size: 40.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Notice',
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.card_giftcard,
                  size: 40.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Event',
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
