class ApiEndPoints {
  static const String newsetBooksEndPoint =
      'volumes?&orderBy=newest&q=subject:football';
  static const String featuredBooksEndPoint = 'volumes?q=subject:Sex';

  static String similarBooksEndPoint({required String category}) {
    return 'volumes?orderBy=relevance&q=$category';
  }
}
