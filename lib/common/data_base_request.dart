abstract class DataBaseRequest {

  static const String tableRole = 'role';

  static const String tableuser = 'user';

  static const String tablestatus = 'status';

  static const String tableperson = 'person';

  static const String tablezakaz = 'zakaz';

  static const String tablehistory = 'history';
  
  static const String tabletovar = 'tovar';
  static const String tabletype_tovar = 'type_tovar';
  static const String tablesklad = 'sklad';

  static const List<String> tableList= [
    tableRole,
    tableuser,
    tablestatus,
    tableperson,
    tablezakaz,
    tablehistory,
    tabletovar,
    tabletype_tovar,
    tablesklad
  ];

  static const String _createTableRole = 'CREATE TABLE "$tableRole" ("id" INTEGER, "role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createtablestatus = 'CREATE TABLE "$tableRole" ("id" INTEGER, "status" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createtableuser = 'CREATE TABLE "$tableRole" ("id" INTEGER, "login" TEXT NOT NULL,"password" TEXT NOT NULL,FOREIGN KEY("id_status") REFERENSES "status"("id"),FOREIGN KEY("id_role") REFERENSES "role"("id"), PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createtableperson = 'CREATE TABLE "$tableRole" ("id" INTEGER, "name" TEXT NOT NULL, "first_name TEXT NOT NULL",FOREIGN KEY("id_user") REFERENSES "user"("id"), PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createtabletype_tovar = 'CREATE TABLE "$tableRole" ("id" INTEGER, "type_name" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createtablesklad = 'CREATE TABLE "$tableRole" ("id" INTEGER, "adress" TEXT NOT NULL UNIQUE,"name" TEXT NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createtabletovar = 'CREATE TABLE "$tableRole" ("id" INTEGER, "tovar" TEXT NOT NULL,FOREIGN KEY("id_type_tovar") REFERENSES "type_tovar"("id"),FOREIGN KEY("id_sklad") REFERENSES "sklad"("id"), PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createtablezakaz = 'CREATE TABLE "$tableRole" ("id" INTEGER, "number" TEXT NOT NULL UNIQUE,FOREIGN KEY("id_tovar") REFERENSES "tovar"("id"),FOREIGN KEY("id_user") REFERENSES "user"("id"), PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createtablehistory = 'CREATE TABLE "$tableRole" ("id" INTEGER, "date" TEXT NOT NULL,FOREIGN KEY("id_zakaz") REFERENSES "zakaz"("id"), PRIMARY KEY("id" AUTOINCREMENT))';
  

  static const List<String> tableCreateList= [
    _createTableRole,
    _createtableuser,
    _createtablestatus,
    _createtableperson,
    _createtablezakaz,
    _createtablehistory,
    _createtabletovar,
    _createtabletype_tovar,
    _createtablesklad
  ];

}