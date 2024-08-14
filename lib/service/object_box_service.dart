import 'package:contact_app/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'package:contact_app/model/contat_entity/contact_entity.dart';

final class ObjectBoxService {
  /// The Store of this app.
  late final Store store;

  static ObjectBoxService? _instance;

  static ObjectBoxService get instance {
    return _instance!;
  }

  late final Box<ContactEntity> contactBox;

  ObjectBoxService._create(this.store) {
    contactBox = store.box<ContactEntity>();
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<void> create() async {
    if (_instance == null) {
      final docsDir = await getApplicationDocumentsDirectory();
      final store = await openStore(directory: join(docsDir.path, "subfolder"));
      _instance = ObjectBoxService._create(store);
    }
  }
}
