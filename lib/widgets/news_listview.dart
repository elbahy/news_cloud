import 'package:flutter/material.dart';

import 'news_tile_widget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            ((context, index) => const NewsTile()),
            childCount: 10));
  }
}
