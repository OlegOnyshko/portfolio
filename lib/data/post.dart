class Post {
  final String id;
  final String title;
  final String text;
  final List<String> tags;
  final DateTime date;

  Post({
    required this.id, 
    required this.title, 
    required this.text, 
    required this.tags, 
    required this.date,
    });
}