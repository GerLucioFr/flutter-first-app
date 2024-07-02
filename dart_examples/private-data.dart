void main(List<String> args) {
  final map = _GoogleMaps(apiKey: '353263463');
  print(map._apiKey);
  print(map.maskedApiKey);
}

class _GoogleMaps {
  final String _apiKey;

  _GoogleMaps({required String apiKey})
      : _apiKey = apiKey; //, _otherPrivate = otherPrivate;

  void getRoute() {
    print('route ${_apiKey}');
  }

  String get maskedApiKey {
    return '****${_apiKey.substring(_apiKey.length - 4, _apiKey.length)}';
  }

  String getMaskedApiKey() {
    return '****${_apiKey.substring(_apiKey.length - 4, _apiKey.length)}';
  }
}
