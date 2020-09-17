import 'package:moor_flutter/moor_flutter.dart';
import 'Database.dart';
part 'ServicoDAO.g.dart';

@UseDao(tables: [Servicos])
class ServicoDAO extends DatabaseAccessor<Database> with _$ServicoDAOMixin {
  ServicoDAO(Database db) : super(db);
listarTodos() {
    return (select(servicos)).watch();

  }
  
  addservico(entity){
    return into(servicos).insert(entity);
  }
  removeservico(id){
    return (delete(servicos)..where((cat)=>cat.id.equals(id))).go();
  }

  updateservico(entity){
    return update(servicos).replace(entity);
  }

}