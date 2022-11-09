// ignore_for_file: non_constant_identifier_names, overridden_fields

import 'package:prak2/domain/entity/furnituretype_entity.dart';

class FurnitureType extends FurnitureTypeEntity{
  @override
  late int id;
  @override
  final String FurnitureTypeName;

  FurnitureType({required this.id, required this.FurnitureTypeName}):super (id: id, FurnitureTypeName: FurnitureTypeName);

Map<String, dynamic> toMap()
{
  return {'furnituretypename': FurnitureTypeName};

}
factory FurnitureType.toFromMap(Map<String, dynamic> json)
{
  return FurnitureType(id: json['ID_FurnitureType'], FurnitureTypeName: json['furnituretypename']);
}
}