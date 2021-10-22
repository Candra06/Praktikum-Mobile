import 'package:belajar_flutter/page2.dart';
import 'package:belajar_flutter/routes.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Page 1'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // InkWell(

            //     onTap: () {
            //       var data = {'asal': '1', 'ke': '2'};
            //       Navigator.pushNamed(context, Routes.PAGE2, arguments: data);
            //     },
            //     child: Text('Ini Page 1, klik button untuk navigasi ke Page 2')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.EXAMPLE);
                },
                child: Text('Ke Page 2'))
          ],
        ),
      ),
    );
  }
}
