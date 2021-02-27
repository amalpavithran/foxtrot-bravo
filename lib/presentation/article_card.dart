import 'package:flutter/material.dart';

import '../domain/article/article.dart';
import '../presentation/article.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    @required this.article,
    Key key,
  }) : super(key: key);
  final Article article;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => print("Navigate to Article page"),
      child: Container(
        height: 150,
        child: Card(
          child: Column(
            children: [
              Text(article.title),
              Text(article.subtitle),
              Text("Wow Points: " +
                  (article.upVotes - article.downVotes).toString()),
              TextButton(
                child: Text('Go To Article'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ArticleView(articleId: article.id),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
