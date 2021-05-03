import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  DateTime sdate;
  DateTime edate;

  String getStartText() {
    if (sdate == null) {
      return 'Select Start Date';
    } else {
      return DateFormat('dd/MM/yyyy').format(sdate);
      // return '${date.month}/${date.day}/${date.year}';
    }
  }
  String getEndText() {
    if (edate == null) {
      return 'Select End Date';
    } else {
      return DateFormat('dd/MM/yyyy').format(edate);
      // return '${date.month}/${date.day}/${date.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(

              child: FlatButton(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.black)
              ),
                color: Colors.white,
                child: Text(getStartText()),

                onPressed: () => startDate(context),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(

              child: FlatButton(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.black)
              ),
                color: Colors.white,
                child: Text(getEndText()),
                onPressed: () => endDate(context),
              ),
            ),
          ],
        );
  }

  Future startDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: sdate ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (newDate != null)
      setState(() {
        sdate = newDate;
        startDateController.text = DateFormat('dd/MM/yyyy').format(sdate);
      });
    else {
      return;
    }
    //setState(() => date = newDate);
    print(startDateController.text);
  }
  Future endDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: edate ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (newDate != null)
      setState(() {
        edate = newDate;
        endDateController.text = DateFormat('dd/MM/yyyy').format(edate);
      });
    else {
      return;
    }
    //setState(() => date = newDate);
    print(endDateController.text);
  }
}
