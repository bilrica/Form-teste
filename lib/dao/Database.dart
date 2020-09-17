import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor/moor.dart';
import 'package:app_teste/dao/ServicoDAO.dart';

part 'Database.g.dart';


class Servicos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get cliente => text()();
  TextColumn get descricao => text()();
  DateTimeColumn get dataServico => dateTime()();
  RealColumn get inicio => real()();
  RealColumn get fim => real()();
  RealColumn get total => real()();
  RealColumn get preco => real()();
  RealColumn get totalServico => real()();
}





@UseMoor(tables: [Servicos])
class Database extends _$Database {
  static Database instance = Database._internal();

   ServicoDAO servicoDAO;
  // we tell the database where to store the data with this constructor
  Database._internal() : super(FlutterQueryExecutor.inDatabaseFolder(path: "testev01.db")){
   servicoDAO = ServicoDAO(this);
    
  }

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
 @override
  int get schemaVersion => 0;
}