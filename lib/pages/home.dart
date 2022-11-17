import 'package:flutter/material.dart';
import 'package:instagram_redesign/widgets/picture.dart';
import 'package:instagram_redesign/widgets/histories.dart';
import '../models/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 155.0,
            toolbarHeight: 155.0,
            backgroundColor: const Color(0xFFEDF0F6),
            flexibleSpace: Column(
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
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => debugPrint('IGTV'),
                            icon: const Icon(
                              Icons.live_tv,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          SizedBox(
                            width: 35.0,
                            child: IconButton(
                              onPressed: () => debugPrint('Direct Messages'),
                              icon: const Icon(
                                Icons.send,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const HistoryWidget(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return PictureWidget(
                  post: posts[index],
                );
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}
