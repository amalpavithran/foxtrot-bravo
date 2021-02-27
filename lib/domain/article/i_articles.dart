import 'article.dart';

abstract class IArticles {
  void postNewArticle(Article article);
  Article getArticle(String articleId);
}
