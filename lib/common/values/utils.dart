class RashiUtils {
  /// ------------------ RASHI MASTER ------------------
  static const Map<String, String> _rashiMaster = {
    'mesh': 'मेष',
    'vrishabh': 'वृषभ',
    'mithun': 'मिथुन',
    'kark': 'कर्क',
    'singh': 'सिंह',
    'kanya': 'कन्या',
    'tula': 'तुला',
    'vrishchik': 'वृश्चिक',
    'dhanu': 'धनु',
    'makar': 'मकर',
    'kumbh': 'कुंभ',
    'meen': 'मीन',
  };

  /// ------------------ HINDI PREFIXES (OFFICIAL) ------------------
  static const Map<String, List<String>> _hindiPrefixes = {
    'mesh': ['चू', 'चे', 'चो', 'ला', 'ली', 'लू', 'ले', 'लो', 'आ'],
    'vrishabh': ['ई', 'ऊ', 'ए', 'ओ', 'वा', 'वी', 'वू', 'वे', 'वो'],
    'mithun': ['का', 'की', 'कू', 'घ', 'ङ', 'छ', 'के', 'को', 'ह'],
    'kark': ['ही', 'हू', 'हे', 'हो', 'डा', 'डी', 'डू', 'डे', 'डो'],
    'singh': ['मा', 'मी', 'मू', 'मे', 'मो', 'टा', 'टी', 'टू', 'टे'],
    'kanya': ['ढो', 'पा', 'पी', 'पू', 'ष', 'ण', 'ठ', 'पे', 'पो'],
    'tula': ['रा', 'री', 'रू', 'रे', 'रो', 'ता', 'ति', 'तू', 'ते'],
    'vrishchik': ['तो', 'न', 'नी', 'नू', 'ने', 'नो', 'या', 'यि', 'यू'],
    'dhanu': ['य', 'यो', 'भा', 'भि', 'भू', 'ध', 'फा', 'ढ', 'भे'],
    'makar': ['भो', 'ज', 'जी', 'खी', 'बू', 'ख', 'खो', 'गा', 'गी'],
    'kumbh': ['गू', 'गे', 'गो', 'स', 'सी', 'सू', 'से', 'सो', 'द'],
    'meen': ['दी', 'दू', 'थ', 'झ', 'दे', 'दो', 'च', 'ची', 'चू'],
  };

  /// ------------------ ENGLISH PREFIXES (PHONETIC) ------------------
  static const Map<String, List<String>> _englishPrefixes = {
    'mesh': ['a', 'aa', 'chu', 'che', 'cho', 'la', 'li', 'lu', 'le', 'lo'],
    'vrishabh': ['e', 'ee', 'u', 'oo', 'o', 'va', 'vi', 'vu', 've', 'vo'],
    'mithun': ['ka', 'ki', 'ku', 'gha', 'nga', 'ch', 'cha', 'ke', 'ko', 'ha'],
    'kark': ['hi', 'hu', 'he', 'ho', 'da', 'di', 'du', 'de', 'do'],
    'singh': ['ma', 'mi', 'mu', 'me', 'mo', 'ta', 'ti', 'tu', 'te'],
    'kanya': ['dho', 'pa', 'pi', 'pu', 'sha', 'na', 'tha', 'pe', 'po'],
    'tula': ['ra', 'ri', 'ru', 're', 'ro', 'ta', 'ti', 'tu', 'te'],
    'vrishchik': ['to', 'na', 'ni', 'nu', 'ne', 'no', 'ya', 'yi', 'yu'],
    'dhanu': ['ya', 'yo', 'bha', 'bhi', 'bhu', 'dha', 'fa', 'bhe'],
    'makar': ['bho', 'ja', 'ji', 'khi', 'bu', 'kha', 'kho', 'ga', 'gi'],
    'kumbh': ['gu', 'ge', 'go', 'sa', 'si', 'su', 'se', 'so', 'da'],
    'meen': ['di', 'du', 'tha', 'jha', 'de', 'do', 'cha', 'chi', 'chu'],
  };

  /// ------------------ HELPERS ------------------
  static bool _isHindi(String input) {
    final code = input.codeUnitAt(0);
    return code >= 0x0900 && code <= 0x097F;
  }

  /// ------------------ MAIN METHOD ------------------
  /// Returns Hindi Rashi Name like: "मेष"
  static String getRashiFromName(String name) {
    if (name.trim().isEmpty) return "Unknown";

    // 🔥 Only first name is used
    final firstName = name.trim().split(RegExp(r'\s+')).first;

    final bool isHindi = _isHindi(firstName);
    final String input = isHindi ? firstName : firstName.toLowerCase();

    final prefixes = isHindi ? _hindiPrefixes : _englishPrefixes;

    for (final entry in prefixes.entries) {
      for (final prefix in entry.value) {
        if (input.startsWith(prefix)) {
          return _rashiMaster[entry.key]!;
        }
      }
    }

    return "Unknown";
  }

  /// Optional utility
  static String getFirstLetter(String text) {
    if (text.trim().isEmpty) return "";
    return text.trim()[0].toUpperCase();
  }
}
