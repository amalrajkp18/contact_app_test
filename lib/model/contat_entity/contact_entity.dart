import 'dart:typed_data';

import 'package:objectbox/objectbox.dart';

@Entity()
class ContactEntity {
  @Id()
  int id;

  Uint8List? imageData;
  String fullName;
  String phoneNumber;
  String? emailAddress;
  String? address;
  double? lat;
  double? long;

  ContactEntity({
    this.id = 0,
    this.imageData,
    required this.fullName,
    required this.phoneNumber,
    this.address,
    this.emailAddress,
    this.lat,
    this.long,
  });
}
