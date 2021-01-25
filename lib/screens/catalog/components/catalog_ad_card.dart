import 'package:flutter/material.dart';
import 'package:kakaobank_demo/screens/catalog/components/circle_indicator.dart';

class CatalogAdCard extends StatefulWidget {
  const CatalogAdCard({Key key}) : super(key: key);

  @override
  _CatalogAdCardState createState() => _CatalogAdCardState();
}

class _CatalogAdCardState extends State<CatalogAdCard> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    _pageController = new PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Stack(
        children: [
          ClipRRect(
            key: PageStorageKey('catalog_ad_card'),
            borderRadius: BorderRadius.circular(10.0),
            child: PageView.builder(
              onPageChanged: (page){
                setState(() {
                  currentPage = page;
                });
              },
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  color: Color(0xfff1a8af),
                  child: Center(
                    child: Text(
                      'Baza ${index + 1}',
                      style: TextStyle(
                        fontSize: 45.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
          Positioned(
            top: 20.0,
            right: 20.0,
            child: CircleIndicator(
              count: 4,
              current: currentPage,
            ),
          ),
        ],
      ),
    );
  }
}
