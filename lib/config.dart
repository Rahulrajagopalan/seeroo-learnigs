class Environments {
  static const String production = 'prod';
  static const String qa = 'QAS';
  static const String dev = 'dev';
  static const String local = 'local';
}

class ConfigEnvironments {
  static const String _currentEnvironments = Environments.local;
  static final List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.local,
      'url': 'https://jsonplaceholder.typicode.com/posts',
    },
    {
      'env': Environments.dev,
      'url': '',
    },
    {
      'env': Environments.qa,
      'url': '',
    },
    {
      'env': Environments.production,
      'url': '',
    },
  ];

  static Map<String, String> getEnvironments() {
    return _availableEnvironments.firstWhere(
      (d) => d['env'] == _currentEnvironments,
    );
  }
}
