import 'package:flutter/material.dart';
import 'package:kakaobank_demo/screens/notification/components/notification_app_bar.dart';
import 'package:kakaobank_demo/screens/notification/components/notification_list.dart';
import 'package:kakaobank_demo/screens/notification/components/old_notification_list.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          constraints: BoxConstraints(
            maxWidth: 632.0,
          ),
          child: CustomScrollView(
            key: PageStorageKey<String>('notification'),
            slivers: [
              SliverAppBar(
                titleSpacing: 10.0,
                elevation: 0.0,
                backgroundColor: Colors.white,
                pinned: true,
                title: NotificationAppBar(),
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    NotificationList(),
                    SizedBox(
                      height: 20.0,
                    ),
                    OldNotificationList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
