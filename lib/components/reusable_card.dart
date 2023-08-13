import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget{

  ReusableCard({required this.col,required this.cardChild,required this.onPress});

  final Color col;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }



}