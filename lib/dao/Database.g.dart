// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Servico extends DataClass implements Insertable<Servico> {
  final int id;
  final String cliente;
  final String descricao;
  final DateTime dataServico;
  final double inicio;
  final double fim;
  final double total;
  final double preco;
  final double totalServico;
  Servico(
      {@required this.id,
      @required this.cliente,
      @required this.descricao,
      @required this.dataServico,
      @required this.inicio,
      @required this.fim,
      @required this.total,
      @required this.preco,
      @required this.totalServico});
  factory Servico.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Servico(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      cliente:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}cliente']),
      descricao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descricao']),
      dataServico: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_servico']),
      inicio:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}inicio']),
      fim: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}fim']),
      total:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}total']),
      preco:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}preco']),
      totalServico: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}total_servico']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || cliente != null) {
      map['cliente'] = Variable<String>(cliente);
    }
    if (!nullToAbsent || descricao != null) {
      map['descricao'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || dataServico != null) {
      map['data_servico'] = Variable<DateTime>(dataServico);
    }
    if (!nullToAbsent || inicio != null) {
      map['inicio'] = Variable<double>(inicio);
    }
    if (!nullToAbsent || fim != null) {
      map['fim'] = Variable<double>(fim);
    }
    if (!nullToAbsent || total != null) {
      map['total'] = Variable<double>(total);
    }
    if (!nullToAbsent || preco != null) {
      map['preco'] = Variable<double>(preco);
    }
    if (!nullToAbsent || totalServico != null) {
      map['total_servico'] = Variable<double>(totalServico);
    }
    return map;
  }

  ServicosCompanion toCompanion(bool nullToAbsent) {
    return ServicosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      cliente: cliente == null && nullToAbsent
          ? const Value.absent()
          : Value(cliente),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      dataServico: dataServico == null && nullToAbsent
          ? const Value.absent()
          : Value(dataServico),
      inicio:
          inicio == null && nullToAbsent ? const Value.absent() : Value(inicio),
      fim: fim == null && nullToAbsent ? const Value.absent() : Value(fim),
      total:
          total == null && nullToAbsent ? const Value.absent() : Value(total),
      preco:
          preco == null && nullToAbsent ? const Value.absent() : Value(preco),
      totalServico: totalServico == null && nullToAbsent
          ? const Value.absent()
          : Value(totalServico),
    );
  }

  factory Servico.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Servico(
      id: serializer.fromJson<int>(json['id']),
      cliente: serializer.fromJson<String>(json['cliente']),
      descricao: serializer.fromJson<String>(json['descricao']),
      dataServico: serializer.fromJson<DateTime>(json['dataServico']),
      inicio: serializer.fromJson<double>(json['inicio']),
      fim: serializer.fromJson<double>(json['fim']),
      total: serializer.fromJson<double>(json['total']),
      preco: serializer.fromJson<double>(json['preco']),
      totalServico: serializer.fromJson<double>(json['totalServico']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cliente': serializer.toJson<String>(cliente),
      'descricao': serializer.toJson<String>(descricao),
      'dataServico': serializer.toJson<DateTime>(dataServico),
      'inicio': serializer.toJson<double>(inicio),
      'fim': serializer.toJson<double>(fim),
      'total': serializer.toJson<double>(total),
      'preco': serializer.toJson<double>(preco),
      'totalServico': serializer.toJson<double>(totalServico),
    };
  }

  Servico copyWith(
          {int id,
          String cliente,
          String descricao,
          DateTime dataServico,
          double inicio,
          double fim,
          double total,
          double preco,
          double totalServico}) =>
      Servico(
        id: id ?? this.id,
        cliente: cliente ?? this.cliente,
        descricao: descricao ?? this.descricao,
        dataServico: dataServico ?? this.dataServico,
        inicio: inicio ?? this.inicio,
        fim: fim ?? this.fim,
        total: total ?? this.total,
        preco: preco ?? this.preco,
        totalServico: totalServico ?? this.totalServico,
      );
  @override
  String toString() {
    return (StringBuffer('Servico(')
          ..write('id: $id, ')
          ..write('cliente: $cliente, ')
          ..write('descricao: $descricao, ')
          ..write('dataServico: $dataServico, ')
          ..write('inicio: $inicio, ')
          ..write('fim: $fim, ')
          ..write('total: $total, ')
          ..write('preco: $preco, ')
          ..write('totalServico: $totalServico')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          cliente.hashCode,
          $mrjc(
              descricao.hashCode,
              $mrjc(
                  dataServico.hashCode,
                  $mrjc(
                      inicio.hashCode,
                      $mrjc(
                          fim.hashCode,
                          $mrjc(
                              total.hashCode,
                              $mrjc(preco.hashCode,
                                  totalServico.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Servico &&
          other.id == this.id &&
          other.cliente == this.cliente &&
          other.descricao == this.descricao &&
          other.dataServico == this.dataServico &&
          other.inicio == this.inicio &&
          other.fim == this.fim &&
          other.total == this.total &&
          other.preco == this.preco &&
          other.totalServico == this.totalServico);
}

class ServicosCompanion extends UpdateCompanion<Servico> {
  final Value<int> id;
  final Value<String> cliente;
  final Value<String> descricao;
  final Value<DateTime> dataServico;
  final Value<double> inicio;
  final Value<double> fim;
  final Value<double> total;
  final Value<double> preco;
  final Value<double> totalServico;
  const ServicosCompanion({
    this.id = const Value.absent(),
    this.cliente = const Value.absent(),
    this.descricao = const Value.absent(),
    this.dataServico = const Value.absent(),
    this.inicio = const Value.absent(),
    this.fim = const Value.absent(),
    this.total = const Value.absent(),
    this.preco = const Value.absent(),
    this.totalServico = const Value.absent(),
  });
  ServicosCompanion.insert({
    this.id = const Value.absent(),
    @required String cliente,
    @required String descricao,
    @required DateTime dataServico,
    @required double inicio,
    @required double fim,
    @required double total,
    @required double preco,
    @required double totalServico,
  })  : cliente = Value(cliente),
        descricao = Value(descricao),
        dataServico = Value(dataServico),
        inicio = Value(inicio),
        fim = Value(fim),
        total = Value(total),
        preco = Value(preco),
        totalServico = Value(totalServico);
  static Insertable<Servico> custom({
    Expression<int> id,
    Expression<String> cliente,
    Expression<String> descricao,
    Expression<DateTime> dataServico,
    Expression<double> inicio,
    Expression<double> fim,
    Expression<double> total,
    Expression<double> preco,
    Expression<double> totalServico,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cliente != null) 'cliente': cliente,
      if (descricao != null) 'descricao': descricao,
      if (dataServico != null) 'data_servico': dataServico,
      if (inicio != null) 'inicio': inicio,
      if (fim != null) 'fim': fim,
      if (total != null) 'total': total,
      if (preco != null) 'preco': preco,
      if (totalServico != null) 'total_servico': totalServico,
    });
  }

  ServicosCompanion copyWith(
      {Value<int> id,
      Value<String> cliente,
      Value<String> descricao,
      Value<DateTime> dataServico,
      Value<double> inicio,
      Value<double> fim,
      Value<double> total,
      Value<double> preco,
      Value<double> totalServico}) {
    return ServicosCompanion(
      id: id ?? this.id,
      cliente: cliente ?? this.cliente,
      descricao: descricao ?? this.descricao,
      dataServico: dataServico ?? this.dataServico,
      inicio: inicio ?? this.inicio,
      fim: fim ?? this.fim,
      total: total ?? this.total,
      preco: preco ?? this.preco,
      totalServico: totalServico ?? this.totalServico,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cliente.present) {
      map['cliente'] = Variable<String>(cliente.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (dataServico.present) {
      map['data_servico'] = Variable<DateTime>(dataServico.value);
    }
    if (inicio.present) {
      map['inicio'] = Variable<double>(inicio.value);
    }
    if (fim.present) {
      map['fim'] = Variable<double>(fim.value);
    }
    if (total.present) {
      map['total'] = Variable<double>(total.value);
    }
    if (preco.present) {
      map['preco'] = Variable<double>(preco.value);
    }
    if (totalServico.present) {
      map['total_servico'] = Variable<double>(totalServico.value);
    }
    return map;
  }
}

class $ServicosTable extends Servicos with TableInfo<$ServicosTable, Servico> {
  final GeneratedDatabase _db;
  final String _alias;
  $ServicosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _clienteMeta = const VerificationMeta('cliente');
  GeneratedTextColumn _cliente;
  @override
  GeneratedTextColumn get cliente => _cliente ??= _constructCliente();
  GeneratedTextColumn _constructCliente() {
    return GeneratedTextColumn(
      'cliente',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descricaoMeta = const VerificationMeta('descricao');
  GeneratedTextColumn _descricao;
  @override
  GeneratedTextColumn get descricao => _descricao ??= _constructDescricao();
  GeneratedTextColumn _constructDescricao() {
    return GeneratedTextColumn(
      'descricao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataServicoMeta =
      const VerificationMeta('dataServico');
  GeneratedDateTimeColumn _dataServico;
  @override
  GeneratedDateTimeColumn get dataServico =>
      _dataServico ??= _constructDataServico();
  GeneratedDateTimeColumn _constructDataServico() {
    return GeneratedDateTimeColumn(
      'data_servico',
      $tableName,
      false,
    );
  }

  final VerificationMeta _inicioMeta = const VerificationMeta('inicio');
  GeneratedRealColumn _inicio;
  @override
  GeneratedRealColumn get inicio => _inicio ??= _constructInicio();
  GeneratedRealColumn _constructInicio() {
    return GeneratedRealColumn(
      'inicio',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fimMeta = const VerificationMeta('fim');
  GeneratedRealColumn _fim;
  @override
  GeneratedRealColumn get fim => _fim ??= _constructFim();
  GeneratedRealColumn _constructFim() {
    return GeneratedRealColumn(
      'fim',
      $tableName,
      false,
    );
  }

  final VerificationMeta _totalMeta = const VerificationMeta('total');
  GeneratedRealColumn _total;
  @override
  GeneratedRealColumn get total => _total ??= _constructTotal();
  GeneratedRealColumn _constructTotal() {
    return GeneratedRealColumn(
      'total',
      $tableName,
      false,
    );
  }

  final VerificationMeta _precoMeta = const VerificationMeta('preco');
  GeneratedRealColumn _preco;
  @override
  GeneratedRealColumn get preco => _preco ??= _constructPreco();
  GeneratedRealColumn _constructPreco() {
    return GeneratedRealColumn(
      'preco',
      $tableName,
      false,
    );
  }

  final VerificationMeta _totalServicoMeta =
      const VerificationMeta('totalServico');
  GeneratedRealColumn _totalServico;
  @override
  GeneratedRealColumn get totalServico =>
      _totalServico ??= _constructTotalServico();
  GeneratedRealColumn _constructTotalServico() {
    return GeneratedRealColumn(
      'total_servico',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        cliente,
        descricao,
        dataServico,
        inicio,
        fim,
        total,
        preco,
        totalServico
      ];
  @override
  $ServicosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'servicos';
  @override
  final String actualTableName = 'servicos';
  @override
  VerificationContext validateIntegrity(Insertable<Servico> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('cliente')) {
      context.handle(_clienteMeta,
          cliente.isAcceptableOrUnknown(data['cliente'], _clienteMeta));
    } else if (isInserting) {
      context.missing(_clienteMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao'], _descricaoMeta));
    } else if (isInserting) {
      context.missing(_descricaoMeta);
    }
    if (data.containsKey('data_servico')) {
      context.handle(
          _dataServicoMeta,
          dataServico.isAcceptableOrUnknown(
              data['data_servico'], _dataServicoMeta));
    } else if (isInserting) {
      context.missing(_dataServicoMeta);
    }
    if (data.containsKey('inicio')) {
      context.handle(_inicioMeta,
          inicio.isAcceptableOrUnknown(data['inicio'], _inicioMeta));
    } else if (isInserting) {
      context.missing(_inicioMeta);
    }
    if (data.containsKey('fim')) {
      context.handle(
          _fimMeta, fim.isAcceptableOrUnknown(data['fim'], _fimMeta));
    } else if (isInserting) {
      context.missing(_fimMeta);
    }
    if (data.containsKey('total')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['total'], _totalMeta));
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    if (data.containsKey('preco')) {
      context.handle(
          _precoMeta, preco.isAcceptableOrUnknown(data['preco'], _precoMeta));
    } else if (isInserting) {
      context.missing(_precoMeta);
    }
    if (data.containsKey('total_servico')) {
      context.handle(
          _totalServicoMeta,
          totalServico.isAcceptableOrUnknown(
              data['total_servico'], _totalServicoMeta));
    } else if (isInserting) {
      context.missing(_totalServicoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Servico map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Servico.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ServicosTable createAlias(String alias) {
    return $ServicosTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ServicosTable _servicos;
  $ServicosTable get servicos => _servicos ??= $ServicosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [servicos];
}
