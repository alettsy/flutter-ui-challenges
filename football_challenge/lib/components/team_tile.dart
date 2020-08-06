import 'package:flutter/material.dart';
import 'package:football_challenge/models/models.dart';
import 'package:football_challenge/core/constants.dart';

class TeamTile extends StatelessWidget {
  final TeamItem item;
  final Function onTap;

  const TeamTile({Key key, this.item, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: item.selected ? selected : background,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          onTap: onTap,
          title: Text(
            item.name,
            style: TextStyle(
              letterSpacing: 0.5,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            item.tag,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Hero(
            tag: '${item.image}',
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/${item.image}'),
            ),
          ),
        ),
      ),
    );
  }
}
