import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var selectTimeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/date');
                },
                child: Center(child: Text('DatePicker'))),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pushNamed('/time');
              },
              child: const Center(
                child: Text('TimePicker'),
              ),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pushNamed('/dialog');
              },
              child: const Center(
                child: Text('show Dialog'),
              ),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pushNamed('/ios');
              },
              child: const Center(
                child: Text('iOS Date Picker'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
