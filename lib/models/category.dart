class Category {
  final String image, name;
  final int id;

  Category({
    required this.id,
    required this.image,
    required this.name,
  });
}

List<Category> categories = [
  Category(id: 1, image: '', name: 'Chinese'),
  Category(id: 2, image: '', name: 'Korean'),
  Category(id: 3, image: '', name: 'Japanese'),
  Category(id: 4, image: '', name: 'Italian'),
  Category(id: 5, image: '', name: 'Bundled'),
  Category(id: 6, image: '', name: 'Vietnamese'),
];
