class Note {
  String _title;
  DateTime _date;
  String _content;

  Note(this._title, this._date, this._content);

  String get title => _title;

  set title(String title) {
    _title = title;
  }

  DateTime get date => _date;

  set date(DateTime date) {
    _date = date;
  }

  String get content => _content;

  set content(String content) {
    _content = content;
  }
}
