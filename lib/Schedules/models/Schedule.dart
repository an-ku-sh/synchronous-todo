class Schedule {
  int id;
  String title;
  String date;
  // String time;
  String isDone;
  Schedule({
    this.id,
    this.title,
    this.date,
    this.isDone,
    //  this.time
  });

  // Getters
  int get _id => id;
  String get _title => title;
  String get _date => date;
  // String get _time => time;
  String get _isDone => isDone;

  // setters
  set _title(String newTitle) {
    this.title = newTitle;
  }

  set _date(String newdate) {
    this.date = newdate;
  }

  set _time(String newtime) {
    // this.time = newtime;
  }

  set _isDone(String NewisDone) {
    this.isDone = NewisDone;
  }

  // Convert a Schedule object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['date'] = _date;
    // map['time'] = _time;
    map['isDone'] = _isDone;
    return map;
  }

  // Extract a Task object from a Map object
  Schedule.fromMapObject(Map<String, dynamic> map) {
    this.id = map['id'];
    this.title = map['title'];
    this.date = map['date'];
    // this.time = map['time'];
    this.isDone = map['isDone'];
  }
}
