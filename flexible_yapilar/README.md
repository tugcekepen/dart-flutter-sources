# flexible_yapilar

```dart
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
          String sonuc =
              sinavSonucMesaji(80);
          sinavAlert(sonuc, context);
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
          String sonuc =
              sinavSonucMesaji(80);
          sinavAlert(sonuc, context);
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
      )
    )
  ]
)
```