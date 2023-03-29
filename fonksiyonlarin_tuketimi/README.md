# fonksiyonlarin_tuketimi

A new Flutter project.

```
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
```
```
void sinavAlert(String sonuc, BuildContext context){
var alert = AlertDialog(
title: Text("Sınav Sonucu"),
content: Text(sonuc),
);

    showDialog(
        context: context, builder: (BuildContext builder) => alert);
}
```