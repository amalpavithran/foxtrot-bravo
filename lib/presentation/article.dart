import 'package:flutter/material.dart';
import 'package:foxtrot/domain/article/article.dart';
import 'package:foxtrot/domain/author/author.dart';
import 'package:flutter_html/flutter_html.dart';

class ArticleView extends StatelessWidget {
  ArticleView({
    @required this.articleId,
    Key key,
  }) : super(key: key);
  final String articleId;

  Article sample = Article(
    id: 'sampleid',
    htmlText: "hello World",
    author: Author(name: "super auth", uid: "testid"),
    upVotes: 10,
    downVotes: 5,
    subtitle: 'Subtitle',
    title: 'Title',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Html(
            data: sample.htmlText,
          ),
        ),
      ),
    );
  }
}
