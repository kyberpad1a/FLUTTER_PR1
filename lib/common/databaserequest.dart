///Запросы к БД
abstract class DataBaseRequest {
  static const String tableRole = 'Role';
  static const String tableUserData = 'UserData';
  static const String tableOrder = 'Order';
  static const String tableFurniture = 'Furniture';
  static const String tableSize = 'Size';
  static const String tableManufacturer = 'Manufacturer';
  static const String tableMaterial = 'Material';
  static const String tableFurnitureType = 'FurnitureType';
  static String deleteTable(String table) => 'DROP TABLE $table';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  static const String tableUsers = 'Users';
  static const List<String> tableList = [
    tableRole,
    tableUsers,
    tableFurniture,
    tableFurnitureType,
    tableManufacturer,
    tableMaterial,
    tableUserData,
    tableSize,
    tableOrder
  ];
  static const List<String> tableCreateList = [
    _createtableRole,
    _createtableUsers,
    _createtableFurniture,
    _createtableFurnitureType,
    _createtableManufacturer,
    _createtableMaterial,
    _createtableUserData,
    _createtableSize,
    _createtableOrder
  ];
  static const String _createtableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users

  static const String _createtableUsers =
      'CREATE TABLE "$tableUsers" ("id" INTEGER,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL,"id_role" INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id"),PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createtableUserData =
      'CREATE TABLE "$tableUserData" ("ID_UserData" INTEGER,"Surname" TEXT NOT NULL,"Name" TEXT NOT NULL,"Patronymic" TEXT,"Email" TEXT NOT NULL, "User_ID" INTEGER, FOREIGN KEY("User_ID") REFERENCES "Users"("id"), PRIMARY KEY("ID_UserData" AUTOINCREMENT))';

  static const String _createtableMaterial =
      'CREATE TABLE "$tableMaterial" ("ID_Material" INTEGER,"MaterialName" TEXT NOT NULL UNIQUE, PRIMARY KEY("ID_Material" AUTOINCREMENT))';
  static const String _createtableFurnitureType =
      'CREATE TABLE "$tableFurnitureType" ("ID_FurnitureType" INTEGER,"FurnitureTypeName" TEXT NOT NULL UNIQUE, PRIMARY KEY("ID_FurnitureType" AUTOINCREMENT))';
  static const String _createtableManufacturer =
      'CREATE TABLE "$tableManufacturer" ("ID_Manufacturer" INTEGER,"ManufacturerName" TEXT NOT NULL UNIQUE,"ManufacturerCountry" TEXT NOT NULL, PRIMARY KEY("ID_Manufacturer" AUTOINCREMENT))';
  static const String _createtableSize =
      'CREATE TABLE "$tableSize" ("ID_Size" INTEGER,"Height" INTEGER NOT NULL,"Width" INTEGER NOT NULL, "Length" INTEGER NOT NULL, PRIMARY KEY("ID_Size" AUTOINCREMENT))';
  static const String _createtableFurniture =
      'CREATE TABLE "$tableFurniture" ("ID_Furniture" INTEGER, "FurnitureName" TEXT NOT NULL UNIQUE, "FurniturePrice" REAL NOT NULL, "Material_ID" INTEGER, "Size_ID" INTEGER, "Manufacturer_ID" INTEGER, "FurnitureType_ID" INTEGER, FOREIGN KEY("Material_ID") REFERENCES "Material"("ID_Material"), FOREIGN KEY("Size_ID") REFERENCES "Size"("ID_Size"), FOREIGN KEY("Manufacturer_ID") REFERENCES "Manufacturer"("ID_Manufacturer"), FOREIGN KEY("FurnitureType_ID") REFERENCES "FurnitureType"("ID_FurnitureType"), PRIMARY KEY("ID_Furniture" AUTOINCREMENT))';
  static const String _createtableOrder =
      'CREATE TABLE "$tableOrder" ("ID_Order" INTEGER,"Furniture_ID" INTEGER,"User_ID" INTEGER, FOREIGN KEY("Furniture_ID") REFERENCES "Furniture"("ID_Furniture"),FOREIGN KEY("User_ID") REFERENCES "Users"("id"), PRIMARY KEY("ID_Order" AUTOINCREMENT))';
}
