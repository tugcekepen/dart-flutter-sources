class Student{
  late int id;
  late String _firstName;
  late String _lastName;
  late int _grade;
  late String _status;

  String get firstName => "OGR - $_firstName";

  set firstName(String value) {
    _firstName = value;
  }

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  int get grade => _grade;

  set grade(int value) {
    _grade = value;
  }

  String get status{
    String message = "";
    if (this.grade >= 50) {
      message = "Geçti";
    } else if (this.grade >= 40) {
      message = "Bütünleme";
    } else {
      message = "Kaldı";
    }
    return message;
  }

  Student.withId(int id, String firstName, String lastName, int grade){
    this.id = id;
    _firstName = firstName;
    _lastName = lastName;
    _grade = grade;
    _status = "Geçti";
  }
  Student(String firstName, String lastName, int grade){
    this.id = id;
    _firstName = firstName;
    _lastName = lastName;
    _grade = grade;
    _status = "Geçti";
  }
}