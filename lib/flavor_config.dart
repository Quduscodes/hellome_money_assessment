enum Flavor { dev, staging, prod, pilot }

class FlavorConfig {
  static late Flavor appFlavor;

  static Uri get baseUri {
    switch (appFlavor) {
      case Flavor.prod:
        return Uri(
          host: 'retailapi.alphamorganbank.com',
          scheme: 'https',
          path: 'api/v1',
        );
      case Flavor.staging:
        return Uri(
          host: 'ibanktest.alphamorganbank.com',
          scheme: 'https',
          path: 'api/v1',
        );
      case Flavor.pilot:
        return Uri(
          host: 'retailapi.alphamorganbank.com',
          scheme: 'https',
          path: 'api/v1',
        );
      case Flavor.dev:
        return Uri(
          host: 'retailapitest.alphamorganbank.com',
          scheme: 'https',
          path: 'api/v1',
        );
    }
  }

  static int get idleTimeOutInSeconds {
    switch (appFlavor) {
      case Flavor.prod:
        return 30;
      case Flavor.pilot:
        return 30;
      case Flavor.staging:
        return 30;
      case Flavor.dev:
        return 30;
    }
  }
}
