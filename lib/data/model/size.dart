import 'package:prak2/domain/entity/size_entity.dart';

class Size extends SizeEntity{
  late int id;
  final double height;
  final double width;
  final double length;

  Size({ required this.height, required this.length, required this.width}):super (height: height, width: width, length: length);

Map<String, dynamic> toMap()
{
  return {'height': height, 'width': width, 'length': length};

}
factory Size.toFromMap(Map<String, dynamic> json)
{
  return Size(height: json['json'], width: json['json'], length: json['json'],);
}
}