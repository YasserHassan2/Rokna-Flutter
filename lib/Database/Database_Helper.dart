import 'dart:async';
import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_ro/model/Adv.dart';

class DBHelper {
    static Database _db;
    static const String ADV_TABLE = 'advertize_table';
    static const String DATABASE_NAME = 'rokna.db';


    Future<Database> get db async{
      if (_db != null)
        {
          return _db;
        }
      _db = await initdb();
      return _db;
    }

    initdb() async {
      io.Directory decoumetationDirectory = await getApplicationDocumentsDirectory();
      String path = decoumetationDirectory.path+DATABASE_NAME;
      var db = await openDatabase(path,version: 1,onCreate: _onCreate);
    }

  Future<FutureOr<void>> _onCreate(Database db, int version) async {
      await db.execute("CREATE TABLE $ADV_TABLE (parseServerID TEXT PRIMARY KEY,"
          "ad_url TEXT,"
          "ad_img TEXT,"
          "ad_snippet TEXT");
  }


  Future<Adv> save(Adv adv) async {
      try {
        var dbClient = await db;
        adv.parseServerID =
        (await dbClient.insert(ADV_TABLE, adv.toMap())) as String;
        //return adv;

        print('done inserting adv ' + adv.ad_snippet);

//    await dbClient.transaction((txn) async {
//      var quary = "INSERT INTO $ADV_TABLE (parseServerID) VALUES ('"+
//      adv.parseServerID + "')";
//      return await txn.rawInsert(quary);
//    });

        Future<List<Adv>> getAdvs() async {
          var dbClient = await db;
          List<Map> maps = await dbClient.query(
              ADV_TABLE, columns: ['parseServerID',
            'ad_url',
            'ad_img',
            'ad_snippet']);
          //List<Map> maps = await dbClient.rawQuery("SELECT * FROM $ADV_TABLE ");


          List<Adv> advs = [];
          if (maps.length > 0) {
            for (int i = 0; i < maps.length; i++) {
              advs.add(Adv.fromMap(maps[i]));
            }
          }
          return advs;
        }
      } on Exception catch(exception){
        print(exception.toString());
        print('database error');

  }}
  Future<String> delete(String ParseServerID) async{
      var dbCLient = await db;
      return (await dbCLient.delete(ADV_TABLE,where: 'parseServerID = ?' , whereArgs: ['parseServerID']))as String ;
  }
  Future<String> update(Adv adv) async{
      var dbCLient = await db;
      return (await dbCLient.update(ADV_TABLE,adv.toMap(),where: 'parseServerID = ?' , whereArgs: [adv.parseServerID]))as String ;
  }
//  Future close() async{
//      var dbClient = await db;
//      dbClient.close();
//  }

}