// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$_$_ArticleFromJson(Map<String, dynamic> json) {
  return _$_Article(
    htmlText: json['htmlText'] as String,
    author: json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    upVotes: json['upVotes'] as int,
    downVotes: json['downVotes'] as int,
  );
}

Map<String, dynamic> _$_$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'htmlText': instance.htmlText,
      'author': instance.author,
      'upVotes': instance.upVotes,
      'downVotes': instance.downVotes,
    };
