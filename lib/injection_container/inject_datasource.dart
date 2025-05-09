// Project imports:
import 'package:auracast/injection_container/injection_index.dart';

final GetIt getIt = GetIt.instance;

Future<void> injectDatasources() async {
  getIt.registerLazySingleton<WeatherApiDatasource>(
      () => WeatherApiDatasourceImpl());
}
