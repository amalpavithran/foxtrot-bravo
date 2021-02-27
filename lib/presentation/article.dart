import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foxtrot/application/article_page/article_page_bloc.dart';
import 'package:foxtrot/domain/article/article.dart';
import 'package:foxtrot/domain/author/author.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:foxtrot/injection.dart';

class ArticleView extends StatelessWidget {
  ArticleView({
    @required this.articleId,
    Key key,
  }) : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ArticlePageBloc>()..add(InitialEvent(articleId)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(sample.title),
          ),
          body: BlocBuilder<ArticlePageBloc, ArticlePageState>(
            builder: (context, state) {
              if (state.article.isNone()) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return SafeArea(
                    child: Html(
                  data: state.article.fold(() => "", (a) => a.htmlText),
                ));
              }
            },
          )),
    );
  }
}