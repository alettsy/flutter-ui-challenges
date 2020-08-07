import 'package:flutter/material.dart';
import 'package:candy_shoes/models/shoe.dart';

class ShoeCard extends StatefulWidget {
  final Shoe shoe;

  const ShoeCard({Key key, this.shoe}) : super(key: key);

  @override
  _ShoeCardState createState() => _ShoeCardState();
}

class _ShoeCardState extends State<ShoeCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 210,
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(236, 238, 240, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      left: -70,
                      child: Image(
                        height: 170,
                        image: AssetImage('assets/images/${widget.shoe.image}'),
                      ),
                    ),
                    Positioned(
                      right: 3,
                      top: 7,
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            size: 20,
                            color: (widget.shoe.favourite)
                                ? Colors.black
                                : Color.fromRGBO(236, 238, 240, 1),
                          ),
                          onPressed: () {
                            setState(() {
                              widget.shoe.toggleFavourite();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(height: 5),
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              widget.shoe.name,
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            padding: EdgeInsets.only(left: 5),
            child: RichText(
              text: TextSpan(
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: '\$ ',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextSpan(
                    text: '${widget.shoe.price}',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
