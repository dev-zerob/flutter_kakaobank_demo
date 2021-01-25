import 'package:flutter/material.dart';
import 'package:kakaobank_demo/screens/notification/components/notification_item.dart';

class OldNotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Previous Notice',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          NotificationItem(
            title: 'Credit Information Change Notice',
            content: "There is a change in credit information. Please check your credit card and debit card registration information.",
            icon: Icons.mail_outline,
            date: '3th October 2020',
          ),
          SizedBox(height: 20,),
          NotificationItem(
            title: 'Credit Information Change Notice',
            content: "There is a change in credit information. Please check your credit card and debit card registration information.",
            icon: Icons.add_alert,
            date: '2th October 2020',
          ),
          SizedBox(height: 20,),
          NotificationItem(
            title: 'Credit Information Change Notice',
            content: "There is a change in credit information. Please check your credit card and debit card registration information.",
            icon: Icons.notifications_active_outlined,
            date: '1th October 2020',
          ),
        ],
      ),
    );
  }
}
