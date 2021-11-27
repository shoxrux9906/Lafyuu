import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:table_calendar/table_calendar.dart';

class BirthdayScreen extends StatefulWidget {
  String date;
  final Function(String info) changeDate;

  BirthdayScreen({
    required this.date,
    required this.changeDate,
  });

  @override
  _BirthdayScreenState createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  String _date = "12/12/2012";
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  bool isClick = true;
  CalendarFormat format = CalendarFormat.month;
  String formattedDate = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        elevation: 1,
        shadowColor: AppTheme.light_grey,
        leadingWidth: 44,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset("assets/icons/left_back.svg"),
          ),
        ),
        title: Text(
          "Birthday",
          style: TextStyle(
            fontFamily: AppTheme.fontFamilyPoppins,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.5,
            height: 1.5,
            color: AppTheme.dark_grey,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Birhday",
              style: TextStyle(
                fontFamily: AppTheme.fontFamilyPoppins,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
                height: 1.5,
                color: AppTheme.dark_grey,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 12),
              margin: EdgeInsets.only(top: 12),
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.light_grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "$_date",
                      style: TextStyle(
                        fontFamily: AppTheme.fontFamilyPoppins,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        height: 1.8,
                        letterSpacing: 0.5,
                        color: AppTheme.normal_grey,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isClick = !isClick;
                      });
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      color: Colors.transparent,
                      child: SvgPicture.asset(
                        "assets/icons/date_calendar.svg",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            isClick
                ? Container()
                : TableCalendar(
                    focusedDay: focusedDay,
                    firstDay: DateTime(1990, 12, 12),
                    lastDay: DateTime.now(),
                    calendarFormat: format,
                    onFormatChanged: (CalendarFormat _format) {
                      setState(() {
                        format = _format;
                      });
                    },
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    daysOfWeekVisible: true,

                    //Day  Changed
                    onDaySelected:
                        (DateTime _selectedDay, DateTime _focusedDay) {
                      setState(() {
                        selectedDay = _selectedDay;
                        focusedDay = _focusedDay;
                      });
                      print(focusedDay);
                    },
                    selectedDayPredicate: (DateTime day) {
                      return isSameDay(selectedDay, day);
                    },

                    //To style the Calendar
                    calendarStyle: CalendarStyle(
                      isTodayHighlighted: true,
                      selectedDecoration: BoxDecoration(
                        color: AppTheme.blue,
                        shape: BoxShape.circle,
                      ),
                      selectedTextStyle: TextStyle(color: AppTheme.white),
                    ),
                  ),
            Spacer(),
            GestureDetector(
              onTap: () {
                formattedDate = DateFormat("dd-MM-yyyy").format(selectedDay);
                widget.changeDate(formattedDate);
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 24),
                width: MediaQuery.of(context).size.width,
                height: 56,
                decoration: BoxDecoration(
                  color: AppTheme.blue,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.blue,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontFamily: AppTheme.fontFamilyPoppins,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.5,
                      height: 1.8,
                      color: AppTheme.white,
                    ),
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
