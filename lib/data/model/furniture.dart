// ignore_for_file: overridden_fields, non_constant_identifier_names

import 'package:prak2/domain/entity/furniture_entity.dart';

class Furniture extends FurnitureEntity{
  @override
  late int id;
  @override
  final double FurniturePrice;
  @override
  final String FurnitureName;
  @override
  final int Material_ID;
  @override
  final int Size_ID;
  @override
  final int Manufacturer_ID;
  @override
  final int FurnitureType_ID;

  // ignore: non_constant_identifier_names
  Furniture({required this.id, required this.FurniturePrice, required this.FurnitureName, required this.Material_ID, required this.Size_ID, required this.Manufacturer_ID, required this.FurnitureType_ID}):super (id: id, FurniturePrice: FurniturePrice, FurnitureName: FurnitureName, Material_ID: Material_ID, Size_ID: Size_ID, Manufacturer_ID: Manufacturer_ID, FurnitureType_ID: FurnitureType_ID);

Map<String, dynamic> toMap()
{
  return {'furnitureprice': FurniturePrice, 'furniturename': FurnitureName, 'material_id': Material_ID, 'size_id': Size_ID, 'manufacturer_id': Manufacturer_ID, 'furnituretype_id': FurnitureType_ID,};

}
factory Furniture.toFromMap(Map<String, dynamic> json)
{
  return Furniture(id:json['ID_Furniture'], FurniturePrice: json['furnitureprice'], FurnitureName: json['furniturename'], Material_ID: json['material_id'], Size_ID: json['size_id'], Manufacturer_ID: json['manufacturer_id'], FurnitureType_ID: json['furnituretype_id'],);
}
}