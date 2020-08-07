import 'package:flutter/material.dart';
import 'package:candy_shoes/constants.dart';
import 'package:candy_shoes/components/components.dart';

class CandyShoesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShoeAppBar(),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Stack(
                  children: [
                    LargeTitle(),
                    FilterButton(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  children: shoes.map((shoe) => ShoeCard(shoe: shoe)).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
