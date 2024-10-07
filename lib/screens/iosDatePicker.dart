import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosDatePicker extends StatefulWidget {
  const IosDatePicker({super.key});

  @override
  State<IosDatePicker> createState() => _IosDatePickerState();
}

class _IosDatePickerState extends State<IosDatePicker> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text('iOS date Picker'),
      ),
      body: Column(
        children: [
              SizedBox(
                    height: 300,
                    child: CupertinoDatePicker(
                      onDateTimeChanged: (DateTime newTime) {
                       setState(() {
                         dateTime = newTime;
                       });
                      },
                      use24hFormat: true,
                      backgroundColor: Colors.white,
                    ),
                  ),

          Center(
            child: CupertinoButton(
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => SizedBox(
                    height: 300,
                    child: CupertinoDatePicker(
                      onDateTimeChanged: (DateTime newTime) {
                        setState(() {
                          dateTime = newTime;
                        });
                      },
                      use24hFormat: true,
                      mode: CupertinoDatePickerMode.time,

                    ),
                  ),
                );
              },
              child: const Text('show bottom sheet'),
            ),
          ),
        ],
      ),
    );
  }
}
