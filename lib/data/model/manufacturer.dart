import 'package:prak2/domain/entity/manufacturer_entity.dart';

class Manufacturer extends ManufacturerEntity{
  late int id;
  final String ManufacturerCountry;
  final String ManufacturerName;


  Manufacturer({required this.id, required this.ManufacturerCountry, required this.ManufacturerName}):super (id: id, ManufacturerCountry: ManufacturerCountry, ManufacturerName: ManufacturerName);

Map<String, dynamic> toMap()
{
  return {'ManufacturerCountry': ManufacturerCountry, 'ManufacturerName': ManufacturerName};

}
factory Manufacturer.toFromMap(Map<String, dynamic> json)
{
  return Manufacturer(id: json['json'], ManufacturerCountry: json['json'], ManufacturerName: json['json']);
}
}