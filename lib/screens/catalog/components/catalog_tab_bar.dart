import 'package:flutter/material.dart';

class CatalogTabBar extends StatelessWidget {
  final TabController tabController;
  final Function onTap;

  const CatalogTabBar({Key key, this.tabController, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      controller: tabController,
      isScrollable: true,
      indicatorColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.black,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      indicatorWeight: 2.0,
      tabs: <Widget>[
        Tab(
          child: Text(
            'All',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Account',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Loan',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Service',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Allience',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
