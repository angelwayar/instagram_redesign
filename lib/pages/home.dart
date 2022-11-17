import 'package:flutter/material.dart';
import 'package:instagram_redesign/widgets/picture.dart';
import 'package:instagram_redesign/widgets/histories.dart';
import '../models/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Instagram',
                style: TextStyle(
                  fontFamily: 'Billabong',
                  fontSize: 32.0,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => debugPrint('IGTV'),
                    icon: const Icon(Icons.live_tv),
                  ),
                  const SizedBox(width: 16.0),
                  SizedBox(
                    width: 35.0,
                    child: IconButton(
                      onPressed: () => debugPrint('Direct Messages'),
                      icon: const Icon(Icons.send),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const HistoryWidget(),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return PictureWidget(
                post: posts[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
