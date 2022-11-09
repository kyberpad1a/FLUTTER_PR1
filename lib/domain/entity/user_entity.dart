// ignore_for_file: non_constant_identifier_names

import 'package:prak2/domain/entity/role_entity.dart';

class UserEntity
{
  late int id;
  final String login;
  final String password;
  // ignore: non_constant_identifier_names
  final int id_role;

  UserEntity({this.id = 0, required this.login, required this.password, required this.id_role});
}