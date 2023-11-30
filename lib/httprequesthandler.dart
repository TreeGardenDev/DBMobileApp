import 'dart:convert';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class TableSpecObject {
  final String storageName;
  final String storageType;

  final List<String> columnNames;
  final List<String> columnTypes;
  final List<String> columnSizes;
  final String tableName;

  const TableSpecObject(
      {required this.storageName,
      required this.storageType,
      required this.columnNames,
      required this.columnTypes,
      required this.columnSizes,
      required this.tableName});

  factory TableSpecObject.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'storageName': String storageName,
        'storageType': String storageType,
        'columnNames': List<String> columnNames,
        'columnTypes': List<String> columnTypes,
        'columnSizes': List<String> columnSizes,
        'tableName': String tableName,
      } =>
        TableSpecObject(
          storageName: storageName,
          storageType: storageType,
          columnNames: columnNames,
          columnTypes: columnTypes,
          columnSizes: columnSizes,
          tableName: tableName,
        ),
      _ => throw FormatException('Unexpected json type ${json.runtimeType}'),
    };
  }
}

class DatabaseSpecObject {
  final String database;
  final List<TableSpecObject> tables;
  final List<String> tableNames;
  final List<String> columnsString;
  final List<String> typesString;
  final List<String> recordsString;
  final String apikey;

  const DatabaseSpecObject(
      {required this.database,
      required this.tables,
      required this.tableNames,
      required this.columnsString,
      required this.typesString,
      required this.recordsString,
      required this.apikey});

    factory DatabaseSpecObject.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'database': String database,
        'tables': List<TableSpecObject> tables,
        'tableNames': List<String> tableNames,
        'columnsString': List<String> columnsString,
        'typesString': List<String> typesString,
        'recordsString': List<String> recordsString,
        'apikey': String apikey,
      } =>
        DatabaseSpecObject(
          database: database,
          tables: tables,
          tableNames: tableNames,
          columnsString: columnsString,
          typesString: typesString,
          recordsString: recordsString,
          apikey: apikey,
        ),
      _ => throw FormatException('Unexpected json type ${json.runtimeType}'),
    };
        
    }
}
