import 'package:flutter/material.dart';
import 'package:rich_editor/rich_editor.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Temo(title: 'RichField Demo'),
    );
  }
}

class Temo extends StatelessWidget {
  final String title;

  const Temo({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'RichField Demo')),
              );
            },
            child: Text("Begin"),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<RichTextFieldState> _richTextFieldState =
      new GlobalKey<RichTextFieldState>();
  StyleController _styleController;

  TextStyle baseStyle;

  @override
  void initState() {
    super.initState();

    baseStyle = TextStyle(fontSize: 20.0, height: 1.2, color: Colors.black);

    _styleController = new StyleController(style: baseStyle);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              child: new Container(
                padding: new EdgeInsets.all(16.0),
                child: new Container(
                  padding: EdgeInsets.all(24.0),
                  decoration: new BoxDecoration(
                      border: new Border.all(
                          color: Theme.of(context).primaryColor)),
                  child: new RichTextField(
                    key: _richTextFieldState,
                    styleController: _styleController,
                    onChangedSpan: (span) {
                    },
                    onChanged: (text) {
                    },
                    maxLines: null,
                    decoration: null,
                    style: baseStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
