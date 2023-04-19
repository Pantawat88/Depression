class Image {
  static final Map<String, String> imageUrls = {
    'mato': 'https://example.com/image1.jpg',
    'nene': 'https://example.com/image2.jpg',
    'huhnu': 'https://example.com/image3.jpg',
    'neko': 'https://example.com/image4.jpg',
    'ramen': 'https://example.com/image5.jpg',
    'chon': 'https://example.com/image5.jpg',
  };

  static String avatarV1(String imageName) {
    return imageUrls[imageName] ?? '';
  }
}
