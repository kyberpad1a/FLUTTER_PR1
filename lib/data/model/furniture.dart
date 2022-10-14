import 'package:prak2/domain/entity/furniture_entity.dart';

class Furniture extends FurnitureEntity{
  late int id;
  final double FurniturePrice;
  final String FurnitureName;
  final int Material_ID;
  final int Size_ID;
  final int Manufacturer_ID;
  final int FurnitureType_ID;

  Furniture({required this.id, required this.FurniturePrice, required this.FurnitureName, required this.Material_ID, required this.Size_ID, required this.Manufacturer_ID, required this.FurnitureType_ID}):super (id: id, FurniturePrice: FurniturePrice, FurnitureName: FurnitureName, Material_ID: Material_ID, Size_ID: Size_ID, Manufacturer_ID: Manufacturer_ID, FurnitureType_ID: FurnitureType_ID);

Map<String, dynamic> toMap()
{
  return {'furnitureprice': FurniturePrice, 'furniturename': FurnitureName, 'material_id': Material_ID, 'size_id': Size_ID, 'manufacturer_id': Manufacturer_ID, 'furnituretype_id': FurnitureType_ID,};

}
factory Furniture.toFromMap(Map<String, dynamic> json)
{
  return Furniture(id:json['json'], FurniturePrice: json['json'], FurnitureName: json['json'], Material_ID: json['json'], Size_ID: json['json'], Manufacturer_ID: json['json'], FurnitureType_ID: json['json'],);
}
}