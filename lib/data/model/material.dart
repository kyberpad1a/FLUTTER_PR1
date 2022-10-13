import 'package:prak2/domain/entity/material_entity.dart';

class Material extends MaterialEntity{
  late int id;
  final String MaterialName;

  Material({ required this.MaterialName}):super (MaterialName: MaterialName);

Map<String, dynamic> toMap()
{
  return {'materialname': MaterialName};

}
factory Material.toFromMap(Map<String, dynamic> json)
{
  return Material(MaterialName: json['json']);
}
}