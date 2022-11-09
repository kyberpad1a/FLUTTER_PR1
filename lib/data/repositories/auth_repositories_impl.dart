import 'package:prak2/common/databaserequest.dart';
import 'package:prak2/core/db/databasehelper.dart';
import 'package:prak2/core/exception/failure.dart';
import 'package:prak2/data/model/user.dart';
import 'package:prak2/data/model/userdata.dart';
import 'package:prak2/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:prak2/domain/repositories/auth_repositories.dart';
import 'package:sqflite/sqflite.dart';

import '../../core/crypto/crypto.dart';

class AuthRepositoriesImpl implements AuthRepositories {
  final _db = DataBaseHelper.instance.database;
  @override
  String get table => DataBaseRequest.tableUsers;
  String get tableUserData => DataBaseRequest.tableUserData;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
    try {
      var user = await _db.query(
        table,
        columns: ['login', 'password', 'id_role'],
        where: 'login = ?',
        whereArgs: [login],
      );
      if (user.isEmpty) {
        return Left('Такого пользователя нет');
      }
      if (user.first['password'] !=Crypto.crypto(password) ) {
        return Left(AuthPasswordFailure().errorMessage);
      }
      return Right(RoleEnum.values[(user.first['id_role'] as int) - 1]);
    } on DatabaseException catch (error) {
      return Left(FailureDB(error.getResultCode()!).error.errorMessage);
    }
  }

  @override
  Future<Either<String, bool>> signUp(String login, String password,
      String surname, String name, String patronymic, String email) async {
    try {
      
      await _db.insert(
        table,
        User(
          login: login,
          password: password,
          id_role: RoleEnum.user.id,
        ).toMap(),
      );
      final dynamic data =
          await _db.rawQuery('SELECT id FROM Users ORDER BY id DESC LIMIT 1');
      await _db.insert(
        tableUserData,
        UserData(
          Surname: surname,
          Name: name,
          Patronymic: patronymic,
          Email: email,
          User_ID: data.last['id'],
        ).toMap(),
      );
      return const Right(true);
    } on DatabaseException catch (error) {
      return Left(FailureDB(error.getResultCode()!).error.errorMessage);
    }
  }
}
