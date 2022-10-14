import 'package:prak2/domain/entity/furnituretype_entity.dart';

class FurnitureType extends FurnitureTypeEntity{
  late int id;
  final String FurnitureTypeName;

  FurnitureType({required this.id, required this.FurnitureTypeName}):super (id: id, FurnitureTypeName: FurnitureTypeName);

Map<String, dynamic> toMap()
{
  return {'furnituretypename': FurnitureTypeName};

}
factory FurnitureType.toFromMap(Map<String, dynamic> json)
{
  return FurnitureType(id: json['json'], FurnitureTypeName: json['json']);
}
}