import 'package:isar/isar.dart';
part 'Customer.g.dart';

@Collection()
class Customer {
  @Id()
  int id = Isar.autoIncrement;
  @Index(unique: true,composite: [CompositeIndex('lastName'),CompositeIndex('dateOfBirth')])
  late String firstName;
  late String lastName;
  late DateTime dateOfBirth;
  late String phoneNumber;
  late String bankAccountNumber;
  @Index(unique: true)
  late String email;
}
