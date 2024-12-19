import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:siteportfolio/router.dart';

class TopMenuWidget extends StatelessWidget {
  const TopMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {
            
          },
          child: Text(
            'Works', 
            style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.w500,
            color: Colors.black,
            ),
          )
        ),
        TextButton(
          onPressed: () {
            context.go("/block");
          },
          child: Text(
            'Blog', 
            style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.w500,
            color: Colors.black,
            ),
          )
        ),
        TextButton(
          onPressed: () {
            
          },
          child: Text(
            'Contact', 
            style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.w500,
            color: Colors.black,
            ),
          )
        ),
      ],
    );
  }
}