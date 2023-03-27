import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  String mesaj = "Merhaba ilk uygulamam!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Sonucu Gör"),
          onPressed: (){
            //butona tıklandığında harekete geçecek metot içeriği
            // () kısmı parametrelerin verileceği kısım. klasik metot imzası düzeni
            int puan = 45;
            String mesaj = "";
            if (puan >= 50) {
              mesaj = "Geçti";
            } else if (puan >= 40) {
              mesaj = "Bütünleme";
            } else {
              mesaj = "Kaldı";
            }
            var alert = AlertDialog(
              title: Text("Sınav Sonucu"),
              content: Text(mesaj),
            );
            showDialog(context: context, builder: (BuildContext builder)=>alert);
          },
        )
      ),
    );
  }

}