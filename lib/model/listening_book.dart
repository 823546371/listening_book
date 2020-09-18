class ListeningBook {
  String imageUrl;
  String title;
  String author;
  double price;
  double newPrice;
  double rating;

  String recommendation;
  String audioIntro;
  String bookIntro;
  bool isVedio;
  String time;

  ListeningBook({
    this.imageUrl,
    this.title,
    this.author,
    this.price,
    this.newPrice,
    this.rating,
    this.recommendation = '',
    this.audioIntro = '',
    this.bookIntro = '',
    this.isVedio = false,
    this.time = ''
  });
}
