import 'package:prak2/domain/entity/material_entity.dart';

class Material extends MaterialEntity{
  late int id;
  final String MaterialName;

  Material({required this.id, required this.MaterialName}):super (id: id, MaterialName: MaterialName);

Map<String, dynamic> toMap()
{
  return {'materialname': MaterialName};

}
factory Material.toFromMap(Map<String, dynamic> json)
{
  return Material(id: json['ID_Material'], MaterialName: json['materialname']);
}
}