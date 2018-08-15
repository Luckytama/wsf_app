import 'package:flutter/material.dart';

final _newsWidgets = <NewsWidget>[
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
  new NewsWidget(
      headline: "Lorem ipsum",
      body:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
];

class NewsPage extends StatelessWidget {
  Widget _buildNewsWidgets() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => _newsWidgets[index],
      itemCount: _newsWidgets.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final listView = Container(child: _buildNewsWidgets());

    final appBar = AppBar(
      title: Text("WSF News"),
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}

class NewsWidget extends StatelessWidget {
  final String headline;
  final String body;

  const NewsWidget({
    Key key,
    @required this.headline,
    @required this.body,
  })  : assert(headline != null),
        assert(body != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            child: Column(
      children: <Widget>[
        new Text(headline),
        new Text(body),
      ],
    )));
  }
}
