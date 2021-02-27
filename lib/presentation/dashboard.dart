import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../domain/article/article.dart';
import '../domain/author/author.dart';
import 'article_card.dart';

class Dashboard extends StatelessWidget {
  Dashboard({
    @required this.user,
    Key key,
  }) : super(key: key);
  final UserCredential user;

  final List<Article> articles = List.generate(
    4,
    (index) => Article(
      id: '$index',
      htmlText: "hello World",
      author: Author(name: "super auth", uid: "testid"),
      upVotes: 10,
      downVotes: 5,
      subtitle: 'Subtitle',
      title: 'Title',
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: articles
                .map(
                  (e) => ArticleCard(article: e),
                )
                .toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("Navigate to New Document page"),
      ),
    );
  }
}