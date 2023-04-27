import 'package:flutter/material.dart';
import 'package:dart_getter_setter/models/student.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  String mesaj = "Öğrenci Takip Sistemi";

  List<Student> students = [
    Student("Engin", "Demiroğ", 25),
    Student("Kerem", "Varış", 65),
    Student("Berkay", "Bilgin", 45),
    Student("Tuğçe", "Kepen", 100)];

  var ogrenciler = ["Engin Demiroğ", "Kerem Varış", "Berkay Bilgin", "Tuğçe Kepen"];

  @override
  Widget build(BuildContext context) { //mesela burası da bir fonksiyon. Geriye "Widget" türünde veri döndüren bir fonk.
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: buildBody(context),
    );
  }

  String sinavSonucMesaji(int puan){
    String sonuc = "";
    if (puan >= 50) {
      sonuc = "Geçti";
    } else if (puan >= 40) {
      sonuc = "Bütünleme";
    } else {
      sonuc = "Kaldı";
    }
    return sonuc;
  }

  void sinavAlert(String sonuc, BuildContext context){
    var alert = AlertDialog(
      title: Text("Sınav Sonucu"),
      content: Text(sonuc),
    );

    showDialog(
        context: context, builder: (BuildContext builder) => alert);
  }

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
                    title: Text("${students[index].firstName} ${students[index].lastName}"), //başlık
                    subtitle: Text("Sınavdan aldığı not: ${students[index].grade} [${students[index].status}]"), //alt başlık
                    trailing: buildStatusIcon(students[index].grade), //satırın en sonu
                    onTap: (){
                      print("${students[index].firstName} ${students[index].lastName}");
                    },
                  );
                })),
        Center(
          child: ElevatedButton(
            child: Text("Sonucu Gör"),
            onPressed: ()
            {
              String sonuc = sinavSonucMesaji(80); //kendi yazdığımız fonksiyon
              sinavAlert(sonuc, context); //kendi yazdığımız fonksiyon
            },
          ),
        ),
      ],
    );
  }

  Widget buildStatusIcon(int grade) {
    if (grade >= 50) {
      return Icon(Icons.done_outline_rounded);
    } else if (grade >= 40) {
      return Icon(Icons.cached_rounded);
    } else {
      return Icon(Icons.clear_rounded);
    }
  }
}