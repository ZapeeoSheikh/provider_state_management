import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class ClockProvider with ChangeNotifier{
  String _timeNow = "";
  String _dateNow = "";
  String get timeNow => _timeNow;
  String get dateNow => _dateNow;

  clock(){
    _timeNow = DateFormat('kk:mm:ss').format(DateTime.now());
    _dateNow = DateFormat('EEE, dd MMM').format(DateTime.now());
    print(_timeNow);
    notifyListeners();
  }


}