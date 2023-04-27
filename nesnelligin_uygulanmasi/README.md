# nesnelligin_uygulanmasi
---
> student.dart
> > ```import 'package:nesnelligin_uygulanmasi/models/student.dart';```
```dart
class Student{
    late String firstName;
    late String lastName;
    late int grade;
    late String status;
    
    Student(String firstName, String lastName, int grade){
        this.firstName = firstName;
        this.lastName = lastName;
        this.grade = grade;
        this.status = "Geçti";
    }
}
```
```dart
List<Student> students = [
    Student("Engin", "Demiroğ", 25),
    Student("Kerem", "Varış", 65),
    Student("Berkay", "Bilgin", 45),
    Student("Tuğçe", "Kepen", 100)];
```
```flutter
Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder:
                    (BuildContext context, int index)
                {
                  return ListTile(
                    leading: /*satırın en başı*/ CircleAvatar(
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2018/11/13/21/43/avatar-3814049_1280.png"),
                    ),
                    title: Text(students[index].firstName + " " + students[index].lastName), //başlık
                    subtitle: Text("Sınavdan aldığı not: " + students[index].grade.toString()), //altbaşlık
                    trailing: buildStatusIcon(students[index].grade), //satırın en sonu
                    onTap: (){
                      print(students[index].firstName + " " + students[index].lastName);
                    },
                  );
                })),
    .
    .
    .
}
```
