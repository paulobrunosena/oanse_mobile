class Env {
  static const Map<String, String> _keys = {
    'API_URL': String.fromEnvironment('API_URL'),
    'URL_BASE_GOV_BR': String.fromEnvironment('URL_BASE_GOV_BR'),
    'REDIRECT_URI_GOV_BR': String.fromEnvironment('REDIRECT_URI_GOV_BR'),
    'CLIENT_ID': String.fromEnvironment('CLIENT_ID'),
  };

  static String _getKey(String key) {
    final value = _keys[key] ?? '';

    if (value.isEmpty) {
      throw Exception('$key não está nas variáveis de ambiente');
    }

    return value;
  }

  static String get apiUrl => _getKey('API_URL');
  static String get clientId => _getKey('CLIENT_ID');
  static String get urlBaseGovBr => _getKey('URL_BASE_GOV_BR');
  static String get redirecUriGovBr =>
      Uri.encodeFull(_getKey('REDIRECT_URI_GOV_BR'));
}
