

import 'package:flutter/material.dart'; //cupertino iOS görünümü için, material ise android için

void main(){
  String mesaj = "Merhaba ilk uygulamam!";
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: Center(
        child: Text("Gövde kısım"),
      ),
    ),
  )); //MaterialApp() isimli sınıf/widget, material standartlarında bir çalışma ortamı kurar ve ona göre sistemin konfigürasyonunu gerçekleştirir.


}