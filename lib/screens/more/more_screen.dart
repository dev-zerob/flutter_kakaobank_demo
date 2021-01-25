import 'package:flutter/material.dart';
import 'package:kakaobank_demo/screens/more/components/more_app_bar.dart';
import 'package:kakaobank_demo/screens/more/components/more_menu_item.dart';
import 'package:kakaobank_demo/screens/more/components/more_menu_list.dart';

class MoreScreen extends StatelessWidget {
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
            key: PageStorageKey<String>('more'),
            slivers: [
              SliverAppBar(
                titleSpacing: 10.0,
                elevation: 0.0,
                backgroundColor: Colors.white,
                pinned: true,
                title: MoreAppBar(),
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    MoreMenuList(),
                    Divider(
                      height: 20.0,
                    ),
                    MoreMenuItem(
                      text: 'My Account',
                    ),
                    MoreMenuItem(
                      text: 'My Credit Information',
                    ),
                    Divider(
                      height: 20.0,
                    ),
                    MoreMenuItem(
                      text: 'Account Transfers',
                    ),
                    MoreMenuItem(
                      text: 'Account Type',
                    ),
                    MoreMenuItem(
                      text: 'Annual Fee',
                    ),
                    MoreMenuItem(
                      text: 'Banking Fees',
                    ),
                    MoreMenuItem(
                      text: 'Bill Payment',
                    )
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
