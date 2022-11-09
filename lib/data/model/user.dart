import 'package:prak2/core/crypto/crypto.dart';
import 'package:prak2/domain/entity/role_entity.dart';
import 'package:prak2/domain/entity/user_entity.dart';

class User extends UserEntity{
  late int id;
  final String login;
  final String password;
  final int id_role;

  User({this.id = 0, required this.login, required this.password, required this.id_role}):super (id: id, login: login, password: password, id_role: id_role);

Map<String, dynamic> toMap()
{
  return {'login': login, 'password':Crypto.crypto(password), 'id_role': id_role};

}
factory User.toFromMap(Map<String, dynamic> json)
{
  return User(id: json['ID_User'], login: json['login'], password: json['password'], id_role: json['id_role'],);
}
}