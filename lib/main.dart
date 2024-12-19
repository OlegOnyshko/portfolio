import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteportfolio/router.dart';
import 'package:siteportfolio/ui/pages/home_page.dart';
import 'package:siteportfolio/ui/pages/works_page.dart';
import 'package:siteportfolio/ui/pages/block_page.dart';

const darkColor = Color(0xFF21243D);
const primaryColor = Color(0xFFFF6464);

void main() {
  usePathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.heebo().fontFamily,
        scaffoldBackgroundColor: Colors.white,
      ),
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
        );
      
  }
}
