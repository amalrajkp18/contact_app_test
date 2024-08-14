import 'package:contact_app/model/contat_entity/contact_entity.dart';
import 'package:contact_app/objectbox.g.dart';
import 'package:contact_app/service/object_box_service.dart';

final class ContactService {
  static void put(ContactEntity contact) {
    ObjectBoxService.instance.contactBox.put(contact);
  }

  static List<ContactEntity> getAll() {
    final Query<ContactEntity> query = ObjectBoxService.instance.contactBox
        .query()
        .order(ContactEntity_.fullName)
        .build();
    return query.find();
  }

  static void remove(int id) {
    ObjectBoxService.instance.contactBox.remove(id);
  }

  static List<ContactEntity> search(String searchText) {
    final Query<ContactEntity> query = ObjectBoxService.instance.contactBox
        .query(
          ContactEntity_.fullName.contains(searchText) |
              ContactEntity_.phoneNumber.contains(searchText),
        )
        .build();
    return query.find();
  }
}
