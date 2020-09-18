class Course {
  String imageUrl;
  String title;
  int current;
  int total;
  bool isVideo;

  Course({
    this.imageUrl,
    this.title,
    this.current,
    this.total,
    this.isVideo = false,
  });
}
