# referans_tiplerle_surdurulebilirlik
---
```dart
class MyApp extends StatelessWidget {

  String mesaj = "Merhaba ilk uygulamam!";
  var ogrenciler = ["Engin Demiroğ", "Kerem Varış", "Berkay Bilgin", "Tuğçe Kepen"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: buildBody(context),
    );
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
```
