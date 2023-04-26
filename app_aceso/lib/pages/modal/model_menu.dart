class ListItem {
  final String title;
  final String subtitle;

  ListItem(this.title, this.subtitle);
}

class ImageItem {
  final String imageUrl;

  ImageItem(this.imageUrl);
}

class ColumnItem {
  final String title;
  final String subtitle;
  final String description;

  ColumnItem(this.title, this.subtitle, this.description);
}
