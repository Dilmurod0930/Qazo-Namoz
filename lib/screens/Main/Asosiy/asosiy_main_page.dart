import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AsosiyMainPaeg extends StatefulWidget {
  const AsosiyMainPaeg({Key? key}) : super(key: key);

  @override
  State<AsosiyMainPaeg> createState() => _AsosiyMainPaegState();
}

class _AsosiyMainPaegState extends State<AsosiyMainPaeg> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //! Kalendar
          Container(
            child: TableCalendar(
              focusedDay: DateTime(2022, 04, 21),
              firstDay: DateTime(2000, 04, 21),
              lastDay: DateTime(2050, 04, 21),
            ),
          ),

          // ! Kontanerlar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.0987,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all()),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.0987,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all()),
              ),
            ],
          )
        ],
      ),
    );
  }
}
