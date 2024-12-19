import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:siteportfolio/data/post.dart';
import 'package:siteportfolio/main.dart';
import 'package:siteportfolio/router.dart';
import 'package:siteportfolio/ui/widgets/recent_post_item_widget.dart';

class RecentPostsWidget extends StatelessWidget {
  const RecentPostsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = [
      Post(
        id: "1", 
        title: "Making a design system from scratch", 
        text: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.", 
        tags: ['Design', 'Pattern'], 
        date: DateTime.now()),
      Post(  
        id: "2", 
        title: "Creating pixel perfect icons in Figma", 
        text: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.", 
        tags: ['Figma', 'Icon Design'], 
        date: DateTime.now()
      ),
    ];
      
    
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 118),
      color: Color(0xFFEDF7FA),

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent posts", style: TextStyle(fontSize: 22, color: darkColor)), 
                TextButton(
                  onPressed: (){
                    context.go("/block");
                  }, 
                  child: 
                  Text("View all",
                   style: 
                   TextStyle(
                    fontSize: 16, 
                    color: Color(0xFF00A8CC))),
                  ),
              ],
            ),
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              ...posts.map((post) {
                return Expanded(
                  child: RecentPostItemWidget(post: post),
                );
              })
            ],
          ),
        ],
      ),
    );
  }
}
