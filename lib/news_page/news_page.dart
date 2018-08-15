import 'package:flutter/material.dart';

final _maxTeaserBodyLength = 120;


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
    final listView = Container(
      child: _buildNewsWidgets(),
    );

    final appBar = AppBar(
      title: Text("WSF News", style: TextStyle(),),
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

  NewsWidget({
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
          decoration: new BoxDecoration(border: Border.all(color: Colors.grey)),
            child: InkWell(
                onTap: () => _navigateToNewsScreen(context),
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(headline, style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, ),),
                        Text(_createTeaserBody()),
                      ],
                    )))));
  }

  void _navigateToNewsScreen(BuildContext context) {
    Navigator
        .of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text(
          headline,
        )),
        body: Text(body),
      );
    }));
  }

  String _createTeaserBody() {
    if (_maxTeaserBodyLength < body.length) {
      String teaserBody = body.substring(0, _maxTeaserBodyLength);
      teaserBody += "...";
      return teaserBody;
    } else {
      return body;
    }
  }
}
