import 'package:prak2/domain/entity/order_entity.dart';

class Order extends OrderEntity{
  late int id;
  final int Furniture_ID;
  final int User_ID;

  Order({required this.id, required this.Furniture_ID, required this.User_ID}):super (id: id, Furniture_ID: Furniture_ID, User_ID: User_ID);

Map<String, dynamic> toMap()
{
  return {'Furniture_ID': Furniture_ID, 'User_ID': User_ID,};

}
factory Order.toFromMap(Map<String, dynamic> json)
{
  return Order(id: json['json'] ,Furniture_ID: json['json'], User_ID: json['json']);
}
}