import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:telephone_book/model/Contact.dart';
import 'package:telephone_book/utils/ConstantsUtils.dart';


class ContactHelper {

  static final ContactHelper _instance = ContactHelper.internal();

  factory ContactHelper() => _instance;

  ContactHelper.internal();

  Database _db;

  Future<Database> get db async {
    if(_db != null){
      return _db;
    } else {
      _db = await initDb();
      return _db;
    }
  }

  Future<Database> initDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, "contactsnew.db");

    return await openDatabase(path, version: ConstantsUtils.DBVERSION, onCreate: (Database db, int newerVersion) async {
      await db.execute(
          "CREATE TABLE ${ConstantsUtils.CONTACT_TABLE}(${ConstantsUtils.CONTACT_ID} INTEGER PRIMARY KEY, "
              "${ConstantsUtils.CONTACT_NAME} TEXT,"
              "${ConstantsUtils.CONTACT_EMAIL} TEXT,"
              "${ConstantsUtils.CONTACT_PHONE} TEXT, "
              "${ConstantsUtils.CONTACT_IMG} TEXT)"
      );
    });
  }

  Future<Contact> saveContact(Contact contact) async {
    Database dbContact = await db;
    contact.id = await dbContact.insert(ConstantsUtils.CONTACT_TABLE, contact.toMap());
    return contact;
  }

  Future<Contact> getContact(int id) async {
    Database dbContact = await db;
    List<Map> maps = await dbContact.query(ConstantsUtils.CONTACT_TABLE,
        columns: [ConstantsUtils.CONTACT_ID, ConstantsUtils.CONTACT_NAME, ConstantsUtils.CONTACT_EMAIL, ConstantsUtils.CONTACT_PHONE, ConstantsUtils.CONTACT_IMG],
        where: "${ConstantsUtils.CONTACT_ID} = ?",
        whereArgs: [id]);
    if(maps.length > 0){
      return Contact.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> deleteContact(int id) async {
    Database dbContact = await db;
    return await dbContact.delete(ConstantsUtils.CONTACT_TABLE, where: "${ConstantsUtils.CONTACT_ID} = ?", whereArgs: [id]);
  }

  Future<int> updateContact(Contact contact) async {
    Database dbContact = await db;
    return await dbContact.update(ConstantsUtils.CONTACT_TABLE,
        contact.toMap(),
        where: "${ConstantsUtils.CONTACT_ID} = ?",
        whereArgs: [contact.id]);
  }

  Future<List> getAllContacts() async {
    Database dbContact = await db;
    List listMap = await dbContact.rawQuery("SELECT * FROM ${ConstantsUtils.CONTACT_TABLE}");
    List<Contact> listContact = List();
    for(Map m in listMap){
      listContact.add(Contact.fromMap(m));
    }
    return listContact;
  }

  Future<int> getNumber() async {
    Database dbContact = await db;
    return Sqflite.firstIntValue(await dbContact.rawQuery("SELECT COUNT(*) FROM "
        "${ConstantsUtils.CONTACT_TABLE}"));
  }

  Future close() async {
    Database dbContact = await db;
    dbContact.close();
  }

}

