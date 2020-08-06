import 'package:flutter/material.dart';
import 'package:football_challenge/models/models.dart';
import 'package:football_challenge/core/constants.dart';
import 'team_tile.dart';

class TeamList extends StatefulWidget {
  @override
  _TeamListState createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {
  TeamItem selectedTeam;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: ListView.builder(
          itemCount: teams.length,
          itemBuilder: (context, index) {
            return TeamTile(
              item: teams[index],
              onTap: () {
                setState(
                  () {
                    if (selectedTeam != null) selectedTeam.toggle();
                    selectedTeam = teams[index]..toggle();
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
