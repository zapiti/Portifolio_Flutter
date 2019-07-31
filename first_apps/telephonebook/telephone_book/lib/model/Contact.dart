import 'package:telephone_book/utils/ConstantsUtils.dart';




class Contact {
  int id;
  String name;
  String email;
  String phone;
  String img;

  Contact();

  Contact.fromMap(Map map){
    id = map[ConstantsUtils.CONTACT_ID];
    name = map[ConstantsUtils.CONTACT_NAME];
    email = map[ConstantsUtils.CONTACT_EMAIL];
    phone = map[ConstantsUtils.CONTACT_PHONE];
    img = map[ConstantsUtils.CONTACT_IMG];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      ConstantsUtils.CONTACT_NAME: name,
      ConstantsUtils.CONTACT_EMAIL: email,
      ConstantsUtils.CONTACT_PHONE: phone,
      ConstantsUtils.CONTACT_IMG: img
    };
    if(id != null){
      map[ConstantsUtils.CONTACT_ID] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Contact(id: $id, name: $name, email: $email, phone: $phone, img: $img)";
  }

}