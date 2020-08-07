class Shoe {
  final String name;
  final double price;
  final String image;
  bool favourite;

  Shoe(this.name, this.price, this.image, {bool favourite})
      : this.favourite = favourite ?? false;

  void toggleFavourite() {
    favourite = !favourite;
  }
}
