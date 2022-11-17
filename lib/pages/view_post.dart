import 'package:flutter/material.dart';
import 'package:instagram_redesign/models/post.dart';
import 'package:instagram_redesign/widgets/commets.dart';
import 'package:instagram_redesign/widgets/picture.dart';

class ViewPostPage extends StatelessWidget {
  final Post post;

  const ViewPostPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            PictureWidget(post: post, backButton: true),
            const SizedBox(height: 24.0),
            const Expanded(child: CommentsWidget())
          ],
        ),
      ),
    );
  }
}
