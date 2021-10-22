import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key key}) : super(key: key);

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  DateTime date;
  TimeOfDay time;
  TextEditingController txtDate = new TextEditingController();
  TextEditingController txtTime = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: txtDate,
              decoration: InputDecoration(
                  hintText: 'Input Tanggal',
                  suffixIcon: IconButton(
                      onPressed: () {
                        showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2030)).then((value) {
                          setState(() {
                            txtDate.text = value.toString();
                          });
                        });
                      },
                      icon: Icon(Icons.calendar_today_rounded))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: txtTime,
              decoration: InputDecoration(
                  hintText: 'Input Waktu',
                  suffixIcon: IconButton(
                      onPressed: () {
                        showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
                          setState(() {
                            print(value.toString());
                            txtTime.text = value.toString().substring(10, 15);
                          });
                        });
                      },
                      icon: Icon(Icons.timer))),
            )
          ],
        ),
      ),
    );
  }
}
