# listwiew_column_expaned_widget

```
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
            Center(...)])
```
