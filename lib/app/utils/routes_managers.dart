import 'package:flutter/material.dart';
import 'package:pokedex_test_app/app/screens/screens.dart';

import 'routes_names.dart';

final Map<String, Widget Function(BuildContext)> routesManagers = {
  RoutesNames.home: (_) => const HomePage(),
};