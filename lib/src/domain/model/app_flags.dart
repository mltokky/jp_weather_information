class AppFlags {
  bool get isRandomSelection => _isRandomSelection;
  String? get postalCode => _postalCode;

  bool _isRandomSelection = false;
  String? _postalCode;

  bool parse(List<String> args) {
    for (int i = 0; i < args.length; i++) {
      switch (args[i]) {
        case "--help":
        case "-h": // ヘルプ表示
          return false;
        case "--random": // 地点ランダム選択
          _isRandomSelection = true;
          break;
        case "--postal": // 郵便番号から検索
          if (i + 1 > args.length - 1) {
            return false;
          }

          _postalCode = args[++i].replaceAll("-", "");
          break;
      }
    }

    return true;
  }
}
