class Routes {
  static Future<String> get homeRoute async {
    return home;
  }

  static const home = "/";
  static Future<String> get firstPageRoute async {
    return home;
  }

  static const firstPage = "/first_page";
  static Future<String> get secondPageRoute async {
    return home;
  }

  static const secondPage = "/second_page";
}
