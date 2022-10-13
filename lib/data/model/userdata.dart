import 'package:prak2/domain/entity/userdata_entity.dart';

class UserData extends UserDataEntity{
  late int id;
  final String Surname;
  final String Name;
  final String Patronymic;
  final String Email;
  final int User_ID;

 UserData({ required this.Surname, required this.Name, required this.Patronymic, required this.Email, required this.User_ID}):super (Surname: Surname, Name: Name, Patronymic: Patronymic, Email: Email, User_ID: User_ID);

Map<String, dynamic> toMap()
{
  return {'surname': Surname, 'name': Name, 'patronymic': Patronymic, 'email': Email, 'user_id': User_ID};

}
factory UserData.toFromMap(Map<String, dynamic> json)
{
  return UserData(Surname: json['json'], Name: json['json'], Patronymic: json['json'], Email: json['json'], User_ID: json['json']);
}
}