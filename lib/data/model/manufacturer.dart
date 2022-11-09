// ignore_for_file: overridden_fields, non_constant_identifier_names

import 'package:prak2/domain/entity/manufacturer_entity.dart';

class Manufacturer extends ManufacturerEntity{
  @override
  late int id;
  @override
  final String ManufacturerCountry;
  @override
  final String ManufacturerName;


  // ignore: non_constant_identifier_names
  Manufacturer({required this.id, required this.ManufacturerCountry, required this.ManufacturerName}):super (id: id, ManufacturerCountry: ManufacturerCountry, ManufacturerName: ManufacturerName);

Map<String, dynamic> toMap()
{
  return {'ManufacturerCountry': ManufacturerCountry, 'ManufacturerName': ManufacturerName};

}
factory Manufacturer.toFromMap(Map<String, dynamic> json)
{
  return Manufacturer(id: json['ID_Manufacturer'], ManufacturerCountry: json['ManufacurerCountry'], ManufacturerName: json['ManufacturerName']);
}
}