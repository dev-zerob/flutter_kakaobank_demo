
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:kakaobank_demo/blocs/home/home_cubit.dart';
import 'package:kakaobank_demo/screens/catalog/catalog_screen.dart';
import 'package:kakaobank_demo/screens/main/main_screen.dart';
import 'package:kakaobank_demo/screens/more/more_screen.dart';
import 'package:kakaobank_demo/screens/notification/notification_screen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (_, state){
        return WillPopScope(
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: (idx){
                _changeBottomNav(_, idx);
              },
              currentIndex: state,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Main",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.apps),
                  label: "Catalog",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: "Notification",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz),
                  label: "More",
                ),
              ],
            ),
            body: _buildBody(state),
          ),
        );
      },
    );
  }

  /// Change Bottom Navigator
  void _changeBottomNav(BuildContext context, int idx){
    switch(idx){
      case 0:
        context.read<HomeCubit>().getMain();
        break;
      case 1:
        context.read<HomeCubit>().getCatalog();
        break;
      case 2:
        context.read<HomeCubit>().getNotification();
        break;
      case 3:
        context.read<HomeCubit>().getMore();
        break;
    }
  }

  Widget _buildBody(idx){
    switch(idx){
      case 0:
        return MainScreen();
      case 1:
        return CatalogScreen();
      case 2:
        return NotificationScreen();
      case 3:
        return MoreScreen();
    }
  }
}
