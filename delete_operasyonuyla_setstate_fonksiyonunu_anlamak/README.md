# delete_operasyonuyla_setstate_fonksiyonunu_anlamak

> student.dart
 + late int id;
 + Student.withId(int id, String firstName, String lastName, int grade) { ... } //ctor
 + Student //ctor düzenlendi


> main.dart
```
Flexible(
    fit: FlexFit.tight,
    flex: 1,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: Row(
            children: [
                SizedBox(
                    width: 26.0,
                ),
                Icon(Icons.delete_rounded),
                SizedBox(
                    width: 2.0,
                ),
                Text("Sil"),
            ],
        ),
----------------------------------------------------------------------------------------------------------
        onPressed: () {
            setState(() {
                students.remove(selectedStudent);
            });
            String message = "(${selectedStudent.firstName} ${selectedStudent.lastName}) silindi!";
            sinavAlert(message, context);
        },
----------------------------------------------------------------------------------------------------------
), //ElevatedButton ), //Flexible
```
