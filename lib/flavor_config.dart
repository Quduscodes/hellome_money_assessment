enum Flavor { dev, staging, prod, pilot }

class FlavorConfig {
  static late Flavor appFlavor;

  static Uri get baseUri {
    switch (appFlavor) {
      case Flavor.prod:
        return Uri(host: '', scheme: '', path: '');
      case Flavor.staging:
        return Uri(host: '', scheme: '', path: '');
      case Flavor.pilot:
        return Uri(host: '', scheme: '', path: '');
      case Flavor.dev:
        return Uri(host: '', scheme: '', path: '');
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
