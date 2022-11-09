import 'package:prak2/domain/entity/role_entity.dart';

import 'package:dartz/dartz.dart';
import 'package:prak2/domain/repositories/auth_repositories.dart';

import '../../core/usecases/auth_user_case.dart';

class Auth implements AuthUserCase<String, AuthParams, RegParams> {
  final AuthRepositories authRepositories;
  Auth(this.authRepositories);
  @override
  Future<Either<String, RoleEnum>> signIn(AuthParams params) async {
    return await authRepositories.signIn(params.login, params.password);
  }

  @override
  Future<Either<String, bool>> signUp(RegParams params) async {
    return await authRepositories.signUp(params.login, params.password,
        params.surname, params.name, params.patronymic, params.email);
  }
}

class AuthParams {
  final String login;
  final String password;


  AuthParams({
    required this.login,
    required this.password,
  });
}
class RegParams {
  final String login;
  final String password;
  final String surname;
  final String name;
  final String patronymic;
  final String email;

  RegParams({
    required this.login,
    required this.password,
    required this.surname,
    required this.name,
    required this.patronymic,
    required this.email,
  });
}
