import 'package:flutter/material.dart';
import 'package:siteportfolio/ui/widgets/about_me_widget.dart';
import 'package:siteportfolio/main.dart';
import 'package:siteportfolio/ui/widgets/recent_posts_widget.dart';
import 'package:siteportfolio/ui/widgets/top_menu_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 27, right: 60),
              child: TopMenuWidget(),
            ),
            SizedBox(height: 128,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 148),
              child: AboutMeWidget(), 
            ),
            SizedBox(height: 64,),
            RecentPostsWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 51),
              
              child: Column(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        
                        IconButton(
                          onPressed: () {
                         launchUrlString("https://www.instagram.com/accounts/login/");
                        },
                        icon: Image.asset("icons/insta.png", width: 30, height: 30,)),
        
                        SizedBox(width: 35,),       
                        IconButton(
                          onPressed: () {
                         launchUrlString("https://uk-ua.facebook.com/login/device-based/regular/login/?login_attempt=1");
                        },
                        icon: Image.asset("icons/fb.png", width: 30, height: 30,)),
        
                        SizedBox(width: 35,), 
                        IconButton(
                          onPressed: () {
                         launchUrlString("https://x.com/?lang=uk");
                        },
                        icon: Image.asset("icons/Group.png", width: 30, height: 30,)),
                                
                        SizedBox(width: 35,),
                        IconButton(
                          onPressed: () {
                         launchUrlString("https://www.linkedin.com/login/uk");
                        },
                        icon: Image.asset("icons/Linkedin.png", width: 30, height: 30,)),
                       
                       
                      ],
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 51),
                    child: Text("Copyright ©2025 All rights reserved "),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
