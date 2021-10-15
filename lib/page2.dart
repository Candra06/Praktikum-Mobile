import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  final String asal;
  final String ke;
  const Page2({Key key, this.asal, this.ke}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Page 2'),
      ),
      body: Container(
        child: Text('Dari page ' + widget.asal + ' Ke Page ' + widget.ke),
      ),
    );
  }
}
