class EventDetails {
  final String _title, _location;
  final DateTime _endTime, _startTime;

  EventDetails(this._title, this._startTime, this._endTime, this._location);

  String get title {
    return _title;
  }

  String get location {
    return _location;
  }

  DateTime get startTime {
    return _startTime;
  }

  DateTime get endTime {
    return _endTime;
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'location': location,
        'startTime': startTime,
        'endTime': endTime
      };
}
