import 'package:flutter/material.dart';
import 'package:kakaobank_demo/screens/main/components/checking_account_card.dart';
import 'package:kakaobank_demo/screens/main/components/main_ad_card.dart';
import 'package:kakaobank_demo/screens/main/components/main_app_bar.dart';
import 'package:kakaobank_demo/screens/main/components/more_button.dart';
import 'package:kakaobank_demo/screens/main/components/savings_account_card.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343b57),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          constraints: BoxConstraints(
            maxWidth: 632.0,
          ),
          child: CustomScrollView(
            key: PageStorageKey<String>('main'),
            slivers: [
              SliverAppBar(
                titleSpacing: 10.0,
                pinned: true,
                backgroundColor: Color(0xff343b57),
                title: MainAppBar(),
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  SizedBox(
                    height: 20.0,
                  ),
                  MainAdCard(
                    title: 'Baza Demo Proejct',
                    content: 'If you want to make the project',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  CheckingAccountCard(),
                  SizedBox(
                    height: 15.0,
                  ),
                  SavingsAccountCard(
                    color: const Color(0xfff1a8af),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SavingsAccountCard(
                    color: const Color(0xffd16562),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SavingsAccountCard(
                    color: const Color(0xffdd8369),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  MoreButton(),
                  SizedBox(
                    height: 50.0,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
