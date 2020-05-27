class Event {
  int id;
  int authorId;
  String title;
  String description;
  DateTime date;
  int maxSubscribers;
  String imageUrl;

  Event(this.id, this.authorId, this.title, this.description, this.date, this.maxSubscribers, this.imageUrl);
}