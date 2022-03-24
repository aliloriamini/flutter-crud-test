import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'Collections/Customer.dart';

class CustomerModel{
  createCustomer(customerData) async{
    final dir = await getApplicationSupportDirectory(); // path_provider package
    final db = await Isar.open(
      schemas: [CustomerSchema],
      directory: dir.path,
      inspector: true, // if you want to enable the inspector for debug builds
    );
    try {
      final customers = db.customers;
      await db.writeTxn((db) async {
        await customers.put(customerData); // insert
      });
    }catch(e){
      db.close();
      return false;
    }
    db.close();
    return true;
  }

  updateCustomer(customerData) async{
    final dir = await getApplicationSupportDirectory(); // path_provider package
    final db = await Isar.open(
      schemas: [CustomerSchema],
      directory: dir.path,
      inspector: true, // if you want to enable the inspector for debug builds
    );
    try {
      final customers = db.customers;
      await db.writeTxn((db) async {
        await customers.put(customerData); // insert
      });
    }catch(e){
      db.close();
      return false;
    }
    db.close();
    return true;
  }

  deleteCustomer(customerID) async{
    final dir = await getApplicationSupportDirectory(); // path_provider package
    final db = await Isar.open(
      schemas: [CustomerSchema],
      directory: dir.path,
      inspector: true, // if you want to enable the inspector for debug builds
    );
    try {
    final customers = db.customers;
    await db.writeTxn((db) async {
      await customers.delete(customerID); // insert
    });
    }catch(e){
      db.close();
      return false;
    }
    db.close();
    return true;
  }

  getCustomers() async{
    final dir = await getApplicationSupportDirectory(); // path_provider package
    final db = await Isar.open(
      schemas: [CustomerSchema],
      directory: dir.path,
      inspector: true, // if you want to enable the inspector for debug builds
    );

    final customers = db.customers;
    final data = await customers.where().findAll();
    db.close();

    return data;
  }

}

