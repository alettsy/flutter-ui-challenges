import 'package:flutter/material.dart';

class ShoeAppBar extends StatelessWidget {
  const ShoeAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              Expanded(child: SizedBox()),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              const SizedBox(width: 120),
            ],
          ),
        ),
        Positioned(
          right: -100,
          top: -80,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 246, 243, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.fromLTRB(10, 100, 100, 10),
            child: FlatButton(
              child: Text(
                'CART (8)',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
