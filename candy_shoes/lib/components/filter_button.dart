import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey[400])),
        child: IconButton(
          icon: Icon(
            Icons.sort,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
