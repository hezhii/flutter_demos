import 'package:flutter/material.dart';

class Article {
  String title;
  String content;

  Article({this.title, this.content});
}

class ArticleListScreen extends StatelessWidget {
  final List<Article> articles = new List.generate(
    10,
    (i) => new Article(
          title: 'Article $i',
          content: 'Article $i: The quick brown fox jumps over the lazy dog.',
        ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Article List'),
      ),
      body: new ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text(articles[index].title),
            onTap: () async {
              String result = await Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new ContentScreen(articles[index]),
                ),
              );

              if (result != null) {
                Scaffold.of(context).showSnackBar(
                  new SnackBar(
                    content: new Text("$result"),
                    duration: const Duration(seconds: 1),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}

class ContentScreen extends StatelessWidget {
  final Article article;

  ContentScreen(this.article);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('${article.title}'),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
          children: <Widget>[
            new Text('${article.content}'),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Like');
                  },
                  child: new Text('Like'),
                ),
                new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Unlike');
                  },
                  child: new Text('Unlike'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
