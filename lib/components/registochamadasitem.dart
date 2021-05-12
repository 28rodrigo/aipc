import 'package:flutter/material.dart';

class RegistoChamadaItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: new BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 3, color: Colors.black),
              borderRadius: BorderRadius.circular(15),
              image: new DecorationImage(
                image: ExactAssetImage('assets/quim.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: deviceWidth * 0.2,
            height: deviceHeight * 0.1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: deviceWidth * 0.55,
                height: deviceHeight * 0.04,
                child: FittedBox(
                  child: Text(
                    "QUIM F. DRAMÁTICA",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                width: deviceWidth * 0.45,
                height: deviceHeight * 0.04,
                child: FittedBox(
                  child: Text(
                    "12 de abril 10:00",
                    style: TextStyle(color: Colors.black),
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          Container(
            width: deviceWidth * 0.2,
            child: Icon(
              Icons.call_end_rounded,
              color: Colors.red,
              size: deviceWidth * 0.1,
            ),
          )
        ],
      ),
    );
  }
}
