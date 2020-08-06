import 'package:flutter/material.dart';

class PremierLeagueLogo extends StatelessWidget {
  const PremierLeagueLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        color: Colors.white,
        child: Image(
          image: AssetImage('assets/images/premier_league.png'),
        ),
      ),
    );
  }
}
