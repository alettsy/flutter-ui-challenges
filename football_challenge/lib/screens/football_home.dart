import 'package:flutter/material.dart';
import 'package:football_challenge/models/models.dart';
import 'package:football_challenge/core/constants.dart';
import 'package:football_challenge/components/components.dart';
import 'package:football_challenge/resources/resources.dart';

class FootballHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(Icons.done, color: background, size: 30),
        backgroundColor: Colors.white,
        onPressed: () {
          print('not implemented yet');
        },
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            PremierLeagueLogo(),
            Expanded(
              child: ClipPath(
                clipper: BackgroundClipper(),
                child: Container(
                  color: background,
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      Text(
                        'Pick your team',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '❤',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 20),
                      TeamList(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
