import 'package:flutter/material.dart';
import 'package:siteportfolio/data/post.dart';
import 'package:siteportfolio/main.dart';

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
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 128),
      color: Color(0xFFEDF7FA),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recent posts", style: TextStyle(fontSize: 22, color: darkColor)), 
              TextButton(
                onPressed: (){}, child: Text("View all", style: TextStyle(fontSize: 16, color: Color(0xFF00A8CC))),
                ),
            ],
          ),
          SizedBox(height: 16,),

          SizedBox(
            height: 296,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
               itemCount: posts.length , 
               itemBuilder: (context, index){
                final post = posts[index];
            
                return Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 10,
                      spreadRadius: 0,
                      color: Color(0xFFBBEA1FA).withOpacity(0.25),
                    )
                  ]
                ),
                child: 
                Text(post.title)
                );
               },
            ),
          )
        ],
      ),
    );
  }
}