class TeamItem {
  final String name;
  final String tag;
  final String image;
  bool selected = false;

  TeamItem(this.name, this.tag, this.image);

  void toggle() {
    selected = !selected;
  }

  @override
  String toString() {
    return 'name: $name, tag: $tag, selected: $selected';
  }
}
