
//class Item {
//  int id;
//  String name;
//  List<String> locations;
//  double price;
//  int stock;
//  bool active;
//
//  Item({this.id,this.name,this.currency});
//
//  Map<String, dynamic> toJson() => _itemToJson(this);
//
//  factory Item.fromJson(Map<String, dynamic> parsedJson){
//    return Item(
//        id: parsedJson['id'].toString(),
//        name : parsedJson['name'].toString(),
//        currency: parsedJson['currency'].toString()
//    );
//  }
//}
//
//
//Map<String, dynamic> _itemToJson(Item instance) {
//  return <String, dynamic>{
//    'id': instance.id,
//    'name': instance.name,
//    'locations': instance.locations,
//    'price': instance.price,
//    'stock': instance.stock,
//    'active': instance.active,
//  };
//}