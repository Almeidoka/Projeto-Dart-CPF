import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

main() {
  setUpAll(() {
    databaseFactory = databaseFactoryFfi;
    sqfliteFfiInit();
  });
  test('teste script creat table',(){
    var db = await openDatabase(inMemoryDatabasePath);
    expect(()=>criarTabelas.forEach(db.execute), returnsNormally);    
  });
}
