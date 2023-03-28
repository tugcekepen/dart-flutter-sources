import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  String mesaj = "Merhaba ilk uygulamam!";
  @override
  Widget build(BuildContext context) {
    var ogrenciler = ["Engin Demiroğ", "Kerem Varış", "Berkay Bilgin"];
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: Column(
        children: [
          Expanded( //ListWiev ile Column uyumunu sağlayabilmek için Expended kullandık.
              child: ListView.builder( //ListWiev.builder, itemCount kadar(verinin(ogrenciler dizisi) uzunluğu kadar) itemBuilder'ı çalıştıracak.
                  itemCount: ogrenciler.length,
                  itemBuilder: //itemBuilder, bir içerik ve bir index parametresi alıyor. index ile verimizi(ogrenciler dizisi) döndürebilmeyi sağladık.
                      (BuildContext context, int index)
                  {
                    return Text(ogrenciler[index]);
                  })),
          Center(
            child: ElevatedButton(
              child: Text("Sonucu Gör"),
              onPressed: ()
              {
                int not = 80;
                String sonuc = "";
                if (not >= 50) {
                  sonuc = "Geçti";
                } else if (not >= 40) {
                  sonuc = "Bütünleme";
                } else {
                  sonuc = "Kaldı";
                }
                var alert = AlertDialog(
                  title: Text("Sınav Sonucu"),
                  content: Text(sonuc),
                );

                showDialog(
                    context: context, builder: (BuildContext builder) => alert);
              },
            ),
          ),
        ],
      ),
    );
  }
}
