import 'dart:io';

main() {
  bool loop = true;
  List<Map<String, dynamic>> Todos = [];
  while (loop) {
    if (Todos.length > 0) {
      for (var i = 1; i <= Todos.length; i++) {
        print(
            ' ${i}) ${Todos[i - 1]['Todo']} - ${Todos[i - 1]['Done'] == true ? 'Yapıldı' : 'Yapılmadı'}');
      }
    }
    print(
        'İşlem Seç; \n 1: Todo Ekle \n 2: Todo Sil \n 3: Todo Değiştir \n 4: Todo Yapıldı Ya Da Yapılmadı \n 5: Çık');
    int selection = int.parse(stdin.readLineSync()!);
    switch (selection) {
      case 1:
        print('Todo Girin');
        String? todo = stdin.readLineSync();
        Todos.add({'Todo': '$todo', 'Done': false});
        break;
      case 2:
        print('Todo Numarası Girin');
        int selection = int.parse(stdin.readLineSync()!) - 1;
        Todos.removeAt(selection);
        if (Todos.length == 0) {
          print('Tüm Todolar Yapıldı, Çıkış Yapılıyor');
          loop = false;
        }
        break;
      case 3:
        print('Todo Numarası Girin');
        int selection = int.parse(stdin.readLineSync()!) - 1;
        String? todo = stdin.readLineSync();
        Todos[selection]['Todo'] = todo;
        Todos[selection]['Done'] = false;
        break;
      case 4:
        print('Todo Numarası Girin');
        int selection = int.parse(stdin.readLineSync()!) - 1;
        Todos[selection]['Done'] = !Todos[selection]['Done'];
        break;
      case 5:
        loop = false;
        break;
      default:
        print('Yanlış Komut Girdiniz');
    }
  }
}
