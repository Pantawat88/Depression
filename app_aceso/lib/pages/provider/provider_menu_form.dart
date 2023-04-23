import 'dart:math';

import 'package:flutter/material.dart';

import '../modal/model_menu.dart';

class SelectedIndexProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}

class ListViewModel with ChangeNotifier {
  List<ListItem> _listItems = [
    ListItem('Title 1', 'Subtitle 1'),
    ListItem('Title 2', 'Subtitle 2'),
    ListItem('Title 3', 'Subtitle 3'),
  ];

  List<ListItem> get listItems => _listItems;

  void addItem(ListItem item) {
    _listItems.add(item);
    notifyListeners();
  }
}

class ImageViewModel with ChangeNotifier {
  String _imageUrl = 'https://picsum.photos/200';

  String get imageUrl => _imageUrl;

  void updateImageUrl() {
    _imageUrl = 'https://picsum.photos/200?random=${Random().nextInt(100)}';
    notifyListeners();
  }
}

class ColumnViewModel with ChangeNotifier {
  List<ColumnItem> _columnItems = [
    ColumnItem('Title 1', 'Subtitle 1', 'Description 1'),
    ColumnItem('Title 2', 'Subtitle 2', 'Description 2'),
    ColumnItem('Title 3', 'Subtitle 3', 'Description 3'),
  ];

  List<ColumnItem> get columnItems => _columnItems;

  void addColumnItem(ColumnItem item) {
    _columnItems.add(item);
    notifyListeners();
  }
}
