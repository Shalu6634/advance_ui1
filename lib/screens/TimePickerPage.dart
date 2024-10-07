import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

TimeOfDay? selectedTime;
class TimePage extends StatelessWidget {
  const TimePage({super.key});

  @override

  Widget build(BuildContext context) {

    TextEditingController TimeController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
     body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(onPressed: () async {
                final TimeOfDay? pickTime = await showTimePicker(context: context, initialTime: TimeOfDay.now(),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData.light().copyWith(
                        colorScheme: const ColorScheme.light(
                          primary: Color(0xff386927),   // Selected time color (e.g., hour/minute text and dial)
                          onPrimary: Colors.white,      // Text color on the selected button and active time
                          onSurface: Colors.black,      // Time picker body text color (e.g., inactive time)
                        ),
                        timePickerTheme: const TimePickerThemeData(
                          dialBackgroundColor: Color(0xffe0e4d6), // Background color of the clock dial
                          dialHandColor: Color(0xff386927),       // Color of the clock dial hand
                          hourMinuteColor: Color(0xffbcebeb),    // Background color of the hour/minute display
                          hourMinuteTextColor: Colors.white,      // Text color of the hour/minute display
                        ),
                        dialogBackgroundColor: Color(0xffe6eadc), // Background color of the time picker
                      ),
                      child: child!,
                    );
                  },
                );


                if(pickTime!=null && pickTime!=selectedTime)
                {
                  selectedTime = pickTime;

                }

              }, child: Text('TimerPicker')),
            ),


            Text(selectedTime==null?'Select a Time':'Time ${selectedTime!.format(context)}'),
            //selectTime
          ],
        ),
      ),
    );
  }
}
