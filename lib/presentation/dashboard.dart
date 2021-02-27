import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foxtrot/domain/article/article.dart';
import 'package:foxtrot/domain/author/author.dart';

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
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => print(user)),
    );
  }
}
