import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  String mesaj = "Merhaba ilk uygulamam!";
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
                itemCount: ogrenciler.length,
                itemBuilder:
                    (BuildContext context, int index)
                {
                  return Text(ogrenciler[index]);
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
}