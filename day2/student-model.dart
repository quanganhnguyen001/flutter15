

class StudentModel {
  late String _sName;
  int? _age;
  late String _sClass;
  var _isK56;

  static const String KEY_NAME = 'key_name';

  StudentModel(this._sName, this._age, this._sClass, this._isK56);

  void displayStudentInfo (dynamic studenInfo) {
    String mess = (studenInfo as StudentModel).toString();

    print('Display student info: $mess');

  }

  // StudentModel (String name, int age, String sClass, bool isK56) {
  //   this._sName = name;
  //   this._age = age;
  //   this._sClass = sClass;
  //   this._isK56 = isK56;
  // }

  @override
  String toString() {
    return 'StudentModel{_sName: $_sName, _age: $_age, _sClass: $_sClass, _isK56: $_isK56}';
  }

  String get sName => _sName;

  set sName(String value) {
    _sName = value;
  }

  get isK56 => _isK56;

  set isK56(value) {
    _isK56 = value;
  }

  String get sClass => _sClass;

  set sClass(String value) {
    _sClass = value;
  }

  int get age => _age!;

  set age(int value) {
    _age = value;
  }

//StudentModel(this._sName, this._sClass, this._isK56);
}


