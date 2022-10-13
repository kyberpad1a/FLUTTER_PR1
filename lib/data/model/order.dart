import 'package:prak2/domain/entity/order_entity.dart';

class Order extends OrderEntity{
  late int id;
  final int Furniture_ID;
  final int User_ID;

  Order({ required this.Furniture_ID, required this.User_ID}):super (Furniture_ID: Furniture_ID, User_ID: User_ID);

Map<String, dynamic> toMap()
{
  return {'Furniture_ID': Furniture_ID, 'User_ID': User_ID,};

}
factory Order.toFromMap(Map<String, dynamic> json)
{
  return Order(Furniture_ID: json['json'], User_ID: json['json']);
}
}