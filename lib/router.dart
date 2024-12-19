import 'package:go_router/go_router.dart';
import 'package:siteportfolio/ui/pages/block_page.dart';
import 'package:siteportfolio/ui/pages/home_page.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomePage(),
      ),
      GoRoute(
      path: "/block",
      builder: (context, state) => BlockPage(),
      ),
  ]
  );