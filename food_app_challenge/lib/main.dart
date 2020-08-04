import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App Challenge',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: FoodHome(),
    );
  }
}

class FoodHome extends StatelessWidget {
  final items = List<CatergoryListItem>()
    ..add(CatergoryListItem(name: 'Food', selected: true, image: 'cutlery.png'))
    ..add(
        CatergoryListItem(name: 'Snacks', selected: false, image: 'snacks.png'))
    ..add(CatergoryListItem(name: 'Salad', selected: false, image: 'salad.png'))
    ..add(
        CatergoryListItem(name: 'Juices', selected: false, image: 'juice.png'))
    ..add(CatergoryListItem(name: 'Soups', selected: false, image: 'soup.png'))
    ..add(
        CatergoryListItem(name: 'Ramen', selected: false, image: 'ramen.png'));

  final popularItems = List<PopularCatergoryItem>()
    ..add(PopularCatergoryItem(
        background: Color.fromRGBO(239, 244, 250, 1),
        name: 'Japanese',
        image: 'sri_lankan.png'))
    ..add(PopularCatergoryItem(
        background: Color.fromRGBO(254, 239, 236, 1),
        name: 'Malaysian',
        image: 'malaysian.png'))
    ..add(PopularCatergoryItem(
        background: Color.fromRGBO(254, 248, 224, 1),
        name: 'Italian',
        image: 'italian.png'))
    ..add(PopularCatergoryItem(
        background: Color.fromRGBO(226, 246, 252, 1),
        name: 'Mexican',
        image: 'mexican.png'))
    ..add(PopularCatergoryItem(
        background: Color.fromRGBO(254, 239, 236, 1),
        name: 'Thai',
        image: 'malaysian.png'))
    ..add(PopularCatergoryItem(
        background: Color.fromRGBO(226, 246, 252, 1),
        name: 'Sri Lankan',
        image: 'sri_lankan.png'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FoodNavBar(),
                  SizedBox(height: 30),
                  Text(
                    'Hi, Alex!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  SearchBar(),
                  SizedBox(height: 30),
                  CatergoryList(items: items),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Popular',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  GridView.count(
                    primary: false,
                    shrinkWrap: true,
                    childAspectRatio: 1,
                    crossAxisCount: 2,
                    children: popularItems,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CatergoryList extends StatelessWidget {
  const CatergoryList({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<CatergoryListItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: items[index]);
        },
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey.withOpacity(0.8)),
          hintText: 'Search Recipes...',
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8))),
    );
  }
}

class CatergoryListItem extends StatelessWidget {
  final String name;
  final String image;
  final bool selected;

  const CatergoryListItem({
    this.name,
    this.selected,
    this.image,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: selected
              ? Color.fromRGBO(86, 83, 109, 1)
              : Color.fromRGBO(244, 244, 244, 1),
          child: Container(
            height: 100,
            width: 100,
            child: Center(
              child: Image(
                height: 40,
                width: 40,
                color: selected ? Colors.white : Colors.black,
                image: AssetImage('assets/images/$image'),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}

class PopularCatergoryItem extends StatelessWidget {
  final String name;
  final Color background;
  final String image;

  const PopularCatergoryItem({Key key, this.name, this.background, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Card(
        shadowColor: Colors.transparent,
        color: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Stack(children: [
          Positioned(
              top: 20,
              left: 20,
              child: Text(name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
          Positioned(
            bottom: -25,
            right: -25,
            child: Image(
              image: AssetImage('assets/images/$image'),
            ),
          )
        ]),
      ),
    );
  }
}

class FoodNavBar extends StatelessWidget {
  const FoodNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.menu, size: 30),
        Expanded(child: SizedBox()),
        Icon(Icons.notifications_none, size: 30)
      ],
    );
  }
}
