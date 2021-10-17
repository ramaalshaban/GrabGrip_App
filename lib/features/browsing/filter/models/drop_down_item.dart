class DropDownItem {
  String? key;
  String? title;

  DropDownItem({this.key, this.title});

  @override
  bool operator ==(Object other) {
    return other is DropDownItem && key == other.key;
  }
}
