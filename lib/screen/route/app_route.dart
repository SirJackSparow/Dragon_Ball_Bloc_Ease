import 'package:go_router/go_router.dart';

import '../home/home_screen.dart';
class Approutes {
  static final GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomeScreen(),
        ),
      ]
  );
}