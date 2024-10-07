import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    String? selectedOption;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: const Padding(
                  padding:  EdgeInsets.only(right: 90),
                  child:  Text('Phone Ringtone',style:   TextStyle(fontSize: 16),),
                ),
                content: Material(
                  color: Colors.transparent,
                  child: SizedBox(
                    height: 200, // Set a fixed height to enable scrolling
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          RadioListTile<String>(
                            title: const Text('Option 1'),
                            value: 'Option 1',
                            groupValue: selectedOption,
                            onChanged: (String? value) {
                             setState(() {
                               selectedOption = value;
                             });
                              Navigator.of(context).pop();
                            },
                          ),
                          RadioListTile<String>(
                            title: const Text('Option 2'),
                            value: 'Option 2',
                            groupValue: selectedOption,
                            onChanged: (String? value) {

                              setState(() {
                                selectedOption = value;
                              });


                              Navigator.of(context).pop();
                            },
                          ),
                          RadioListTile<String>(
                            title: const Text('Option 3'),
                            value: 'Option 3',
                            groupValue: selectedOption,
                            onChanged: (String? value) {

                               setState(() {
                                 selectedOption = value;
                               });

                              Navigator.of(context).pop();
                            },
                          ),
                          RadioListTile<String>(
                            title: const Text('Option 4'),
                            value: 'Option 4',
                            groupValue: selectedOption,
                            onChanged: (String? value) {
                                  setState(() {
                                    selectedOption = value;
                                  });

                              Navigator.of(context).pop();
                            },
                          ),
                          RadioListTile<String>(
                            title: const Text('Option 5'),
                            value: 'Option 5',
                            groupValue: selectedOption,
                            onChanged: (String? value) {

                              setState(() {
                                selectedOption = value;
                              });

                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                actions: [
                  CupertinoDialogAction(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close dialog without saving
                    },
                    child: const Text('Cancel',style: TextStyle(color: Color(0xff386927))),
                  ),
                  CupertinoDialogAction(
                    onPressed: () {
                      // setState(() {
                      //   // Update the selected option when OK is pressed
                      // });
                      Navigator.of(context).pop(); // Close dialog and save
                    },
                    child: const Text('OK',style: TextStyle(color: Color(0xff386927)),),
                  ),
                ],
              ),
            );
          },
          child: const Text('open dialog box'),
        ),
      ),
    );
  }
}

bool groupValue = false;
