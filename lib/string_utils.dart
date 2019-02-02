String timeFormat(DateTime time) {
  var hour = time.hour < 10 || (time.hour >= 13 && time.hour <= 21) ? "K" : "hh";
  var minute = time.minute != 0 ? ":mm" : "";

  return "$hour$minute a";
}