import 'package:hellome_assessment/hellome_app.dart';

import 'flavor_config.dart';

void main() async {
  FlavorConfig.appFlavor = Flavor.prod;
  await HelloMeApp.boot();
}
