import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakaobank_demo/blocs/home/home_cubit.dart';
import 'package:kakaobank_demo/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KakaoBank Demo Project',
      routes: {
        '/': (context) {
          return BlocProvider(
            create: (_) => HomeCubit(),
            child: HomeScreen(),
          );
        }
      },
    );
  }
}
