import 'package:flutter/material.dart';

class HeyClyncer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Pockets"),
        backgroundColor: Colors.white70,
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: 388,
              height: 612,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(25),
                color: Color(
                    0xFFADFFF4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/clyncawi.png'),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    "You have to issue a clync card\n to use the pockets feature",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Image.asset(
                'assets/clync2.png',
                width: size.width,
              ),
            ),

          ),
        ],
      ),
    );
  }
}
