import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tools{
  static DateTimeToYear(DateTime date) {
  var format = new DateFormat('yyyy');
  return format.format(date);
  }

  static DateTimeToMonthYear(DateTime date) {
  var format = new DateFormat('MMM yyyy');
  return format.format(date);
  }

  static DateTimeToEnglishDate(DateTime date) {
  var format = new DateFormat('MMMM dd, yyyy');
  return format.format(date);
  }

  static DateTimeToEnglishTime(DateTime date) {
  var format = new DateFormat('HH:mm');
  return format.format(date);
  }

  static DateTimeToFullDate(DateTime date) {
  var format = new DateFormat('dd/MM/yyyy');
  return format.format(date);
  }

  static DateTimeToFullDateTime(DateTime date) {
  var format = new DateFormat('dd/MM/yyyy HH:mm');
  return format.format(date);
  }

  static DateTimeNowFormatter() {
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  return formatter.format(now);
  }

  static DateTimeNow(
  {int extraMonth = 0,
  int extraDay = 0,
  int extraYear = 0,
  int extraHour = 0,
  int extraMinute = 0}) {
  bool isKabisat = false;
  final List<int> dayOfMonthKabisat = <int>[
  31,
  28,
  31,
  30,
  31,
  30,
  31,
  31,
  30,
  31,
  30,
  31
  ];
  final List<int> dayOfMonthNormal = <int>[
  31,
  29,
  31,
  30,
  31,
  30,
  31,
  31,
  30,
  31,
  30,
  31
  ];

  DateTime now = DateTime.now();

  int minute = (now.minute + extraMinute) >= 60
  ? (now.minute + extraMinute) % 60
      : (now.minute + extraMinute);
  extraHour += (now.minute + extraMinute) ~/ 60;
  int hour = (now.hour + extraHour) >= 24
  ? (now.hour + extraHour) % 24
      : (now.hour + extraHour);
  extraDay += (now.hour + extraHour) ~/ 24;
  int day = now.day;
  int month = now.month;
  int year = now.year + extraYear;

  if (year % 4 != 0)
  isKabisat = false;
  else if ((year % 100 == 0) && (year % 400 != 0))
  isKabisat = false;
  else
  isKabisat = true;

  if (isKabisat) {
  day = (now.day + extraDay) >= dayOfMonthKabisat[month - 1]
  ? (now.day + extraDay) % dayOfMonthKabisat[month - 1]
      : (now.day + extraDay);
  extraMonth += (now.day + extraDay) ~/ dayOfMonthKabisat[month - 1];
  month = (now.month + extraMonth) >= 12
  ? (now.month + extraMonth) % 12
      : (now.month + extraMonth);
  extraYear += (now.month + extraMonth) ~/ 12;
  year = now.year + extraYear;
  } else {
  day = (now.day + extraDay) >= dayOfMonthNormal[month - 1]
  ? (now.day + extraDay) % dayOfMonthNormal[month - 1]
      : (now.day + extraDay);
  extraMonth += (now.day + extraDay) ~/ dayOfMonthNormal[month - 1];
  month = (now.month + extraMonth) >= 12
  ? (now.month + extraMonth) % 12
      : (now.month + extraMonth);
  extraYear += (now.month + extraMonth) ~/ 12;
  year = now.year + extraYear;
  }

  return new DateTime(year, month, day, hour, minute);
  }

  static combineDateTimeAndTimeOfDay(TimeOfDay tod, DateTime dt) {
  return DateTime(dt.year, dt.month, dt.day, tod.hour, tod.minute);
  }

}

/* FORMAT DATE DateTime
 ICU Name                   Skeleton
 --------                   --------
 DAY                          d
 ABBR_WEEKDAY                 E
 WEEKDAY                      EEEE
 ABBR_STANDALONE_MONTH        LLL
 STANDALONE_MONTH             LLLL
 NUM_MONTH                    M
 NUM_MONTH_DAY                Md
 NUM_MONTH_WEEKDAY_DAY        MEd
 ABBR_MONTH                   MMM
 ABBR_MONTH_DAY               MMMd
 ABBR_MONTH_WEEKDAY_DAY       MMMEd
 MONTH                        MMMM
 MONTH_DAY                    MMMMd
 MONTH_WEEKDAY_DAY            MMMMEEEEd
 ABBR_QUARTER                 QQQ
 QUARTER                      QQQQ
 YEAR                         y
 YEAR_NUM_MONTH               yM
 YEAR_NUM_MONTH_DAY           yMd
 YEAR_NUM_MONTH_WEEKDAY_DAY   yMEd
 YEAR_ABBR_MONTH              yMMM
 YEAR_ABBR_MONTH_DAY          yMMMd
 YEAR_ABBR_MONTH_WEEKDAY_DAY  yMMMEd
 YEAR_MONTH                   yMMMM
 YEAR_MONTH_DAY               yMMMMd
 YEAR_MONTH_WEEKDAY_DAY       yMMMMEEEEd
 YEAR_ABBR_QUARTER            yQQQ
 YEAR_QUARTER                 yQQQQ
 HOUR24                       H
 HOUR24_MINUTE                Hm
 HOUR24_MINUTE_SECOND         Hms
 HOUR                         j
 HOUR_MINUTE                  jm
 HOUR_MINUTE_SECOND           jms
 HOUR_MINUTE_GENERIC_TZ       jmv
 HOUR_MINUTE_TZ               jmz
 HOUR_GENERIC_TZ              jv
 HOUR_TZ                      jz
 MINUTE                       m
 MINUTE_SECOND                ms
 SECOND                       s
*/
