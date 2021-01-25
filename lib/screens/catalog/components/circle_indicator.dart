import 'package:flutter/material.dart';

class CircleIndicator extends StatelessWidget {
  final int count;
  final int current;

  const CircleIndicator({Key key, this.count, this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < count; i++)
          i == current ? selectedDot() : normalDot()
      ],
    );
  }

  Widget selectedDot(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0,),
      width: 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        color: Colors.white,
      ),
    );
  }

  Widget normalDot(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0,),
      width: 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        color: Colors.white.withOpacity(0.4),
      ),
    );
  }
}
