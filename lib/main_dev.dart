import 'flavor_config.dart';
import 'hellome_app.dart';

void main() async {
  FlavorConfig.appFlavor = Flavor.dev;
  await HelloMeApp.boot();
}
