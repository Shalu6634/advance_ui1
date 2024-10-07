import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePage extends StatelessWidget {
  const DateTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController selectTimeController = TextEditingController();
    return Scaffold(

      appBar: AppBar(
        title: const Text('DatePicker',style: TextStyle(color:Color(0xff386927),fontSize: 19 ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
          TextField(
          controller: selectTimeController,
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.black),

          decoration:InputDecoration(labelText: 'Date',labelStyle: TextStyle(color: Color(0xff386927)),
              suffixIcon: GestureDetector(
                  onTap: () async {
                    DateTime? pickedTime = await showDatePicker(
                        builder: (BuildContext context, Widget? child) {


                          return Theme(
                            data: ThemeData.light().copyWith(
                              colorScheme: const ColorScheme.light(
                                primary: Color(0xff386927), // header background color, button colors
                                onPrimary: Colors.white, // header text color
                                onSurface: Colors.black, // body text color
                              ),
                              dialogBackgroundColor: Color(0xff386927), // background color of the dialog
                            ),
                            child: child!,
                          );
                        },
                        currentDate: DateTime.now(),
                        cancelText:'cancel',
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2025));
                    if(pickedTime!=null)
                    {

                      selectTimeController.text = DateFormat.yMd().format(pickedTime);
                    }
                    else
                    {
                      selectTimeController.text = DateFormat.yMd().format(DateTime.now());
                    }

                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.calendar_today),
                  )),
              enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xff386927),width: 1),),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xff386927),width: 1))
          ),
          autocorrect: true,
        )
          ],
        ),
      ),
    );

  }
}
