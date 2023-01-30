class DataMovie {
  final String linkImage;
  final String linkBackgoundImage;
  final String linkTrailer;
  final String movieName;
  final String textTittle;
  final String date;
  final String time;
  final String cencorship;
  final String typeMovie;
  final String direction;
  final String actions;
  final String language;
  DataMovie({
    required this.linkTrailer,
    required this.linkImage,
    required this.linkBackgoundImage,
    required this.movieName,
    required this.textTittle,
    required this.date,
    required this.time,
    required this.actions,
    required this.cencorship,
    required this.typeMovie,
    required this.direction,
    this.language = "Tiếng Anh - Phụ đề Tiếng Việt; Lồng tiếng",
  });
}
