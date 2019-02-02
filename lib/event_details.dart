import 'package:meta/meta.dart';
import "dart:math";

EventDetails randomEvent() {
  var titles = [
    "Networking @ Nite",
    "Chamber on Tap",
    "Monthly Mingle",
    "BASH",
    "Off the Clock",
    "The 5:05",
    "Business Jive After Five",
    "Business Connections",
    "Live at 5",
    "Members Only"
  ];
  var locations = [
    "704 N. Valley Farms Road Shelbyville, TN 37160",
    "677 East Mechanic St. Shakopee, MN 55379",
    "9491 Wakehurst Rd. Schaumburg, IL 60193",
    "7310 St Margarets Avenue Front Royal, VA 22630",
    "9163 Henry St. Jacksonville, NC 28540",
    "71 SW. Mayflower St. Spring Hill, FL 34608"
  ];
  var times = [
    [DateTime(2019, 1, 1, 14, 30), DateTime(2019, 1, 1, 16, 30)],
    [DateTime(2019, 1, 23, 12, 45), DateTime(2019, 1, 23, 14, 45)],
    [DateTime(2019, 1, 30, 13, 35), DateTime(2019, 1, 30, 15, 35)]
  ];
  var random = Random();
  var time = times[random.nextInt(times.length)];
  return EventDetails(
      title: titles[random.nextInt(titles.length)],
      startTime: time[0],
      endTime: time[1],
      location: locations[random.nextInt(locations.length)]);
}

class EventDetails {
  final String title, location;
  final DateTime endTime, startTime;

  EventDetails(
      {@required this.title,
      @required this.startTime,
      @required this.endTime,
      @required this.location});

  Map<String, dynamic> toJson() => {
        'title': title,
        'location': location,
        'startTime': startTime,
        'endTime': endTime
      };
}
