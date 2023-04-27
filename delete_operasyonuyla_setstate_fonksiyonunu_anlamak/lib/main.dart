import 'package:flutter/material.dart';
import 'package:delete_operasyonuyla_setstate_fonksiyonunu_anlamak/models/student.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mesaj = "Öğrenci Takip Sistemi";

  Student selectedStudent = Student.withId(0,"","",0);

  List<Student> students = [
    Student.withId(1,"Engin", "Demiroğ", 25),
    Student.withId(2,"Kerem", "Varış", 65),
    Student.withId(3,"Berkay", "Bilgin", 45),
    Student.withId(4,"Tuğçe", "Kepen", 100)
  ];

  @override
  Widget build(BuildContext context) {
    //mesela burası da bir fonksiyon. Geriye "Widget" türünde veri döndüren bir fonk.
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: buildBody(context),
    );
  }

  void sinavAlert(String sonuc, BuildContext context) {
    var alert = AlertDialog(
      title: Text("İşlem Sonucu"),
      content: Text(sonuc),
    );

    showDialog(context: context, builder: (BuildContext builder) => alert);
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: /*satırın en başı*/ CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2018/11/13/21/43/avatar-3814049_1280.png")),
                    title: Text(
                        "${students[index].firstName} ${students[index].lastName}"), //başlık
                    subtitle: Text(
                        "Sınavdan aldığı not: ${students[index].grade} [${students[index].status}]"), //alt başlık
                    trailing: buildStatusIcon(
                        students[index].grade), //satırın en sonu
                    onTap: () {
                      setState(() {
                        selectedStudent = students[index];
                      });
                      print(selectedStudent.firstName);
                    },
                  );
                })),
        Text("Seçilen Öğrenci: ${selectedStudent.firstName}"),
        Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Row(
                  children: [
                    Icon(Icons.add_rounded),
                    Text("Yeni Öğrenci"),
                  ],
                ),
                onPressed: () {
                  String message = "Öğrenci eklendi!";
                  sinavAlert(message, context); //kendi yazdığımız fonksiyon
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: Row(
                  children: [
                    //SizedBox'ı boş kutu oluşturmak için kullandık. Yerleşimi düzenlemek adına tamamen.
                    SizedBox(
                      width: 9.0,
                    ),
                    Icon(Icons.update_rounded),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text("Güncelle"),
                  ],
                ),
                onPressed: () {
                  String message = "Öğrenci güncellendi!";
                  sinavAlert(message, context);
                },
              ),
            ),
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
                onPressed: () {
                  setState(() {
                    students.remove(selectedStudent);
                  });
                  String message = "(${selectedStudent.firstName} ${selectedStudent.lastName}) silindi!";
                  sinavAlert(message, context);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildStatusIcon(int grade) {
    if (grade >= 50) {
      return Icon(
        Icons.done_rounded,
        color: Colors.green,
      );
    } else if (grade >= 40) {
      return Icon(
        Icons.cached_rounded,
        color: Colors.black54,
      );
    } else {
      return Icon(
        Icons.clear_rounded,
        color: Colors.red,
      );
    }
  }
}