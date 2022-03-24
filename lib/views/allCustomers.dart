import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mc_crud_test/models/Customer.dart';
import '../colors.dart' as color;
import '../widgets/AppBar.dart';
class AllCustomer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AllCustomerState();
  }
}

class _AllCustomerState extends State<AllCustomer> {

  List dataTableItems = [];
  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
        label: Text('firstName'),
        numeric: false,
      ),
      const DataColumn(
        label: Text('lastName'),
        numeric: false,
      ),
      const DataColumn(
        label: Text('email'),
        numeric: false,
      ),
      const DataColumn(
        label: Text('phoneNumber'),
        numeric: false,
      ),
      const DataColumn(
        label: Text('bankAccountNumber'),
        numeric: false,
      ),
      const DataColumn(
        label: Text('dateOfBirth'),
        numeric: false,
      ),
      const DataColumn(
        label: Text('operation'),
        numeric: false,
      ),
    ];
  }

  DataRow _createRow(item){
    return
      DataRow(
        cells: [
          DataCell(Text(item.firstName),),
          DataCell(Text(item.lastName)),
          DataCell(Text(item.email)),
          DataCell(Text(item.phoneNumber)),
          DataCell(Text(item.bankAccountNumber)),
          DataCell(Text(DateFormat('yyyy-MM-dd').format(item.dateOfBirth).toString())),
          DataCell(
              Row(children: [
                GestureDetector(
                  onTap: () async{
                    Get.toNamed('/UpdateCustomer',
                        arguments:{
                      'id':item.id.toString(),
                      'firstName':item.firstName,
                      'lastName':item.lastName,
                      'email':item.email,
                      'phoneNumber':item.phoneNumber,
                      'bankAccountNumber':item.bankAccountNumber,
                      'dateOfBirth':item.dateOfBirth,
                    }
                    );
                    // await(ApiContacts()).updateContact({});
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 3,left: 3,right: 3,bottom: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue
                    ),
                    child: const Icon(Icons.edit,color: Colors.white,),
                  ),
                ),
                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: () async{
                    print(item.id);
                    bool success = await CustomerModel().deleteCustomer(item.id);
                    if(success) {
                      setState(() {});
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('some error happen when delete try again.')),
                      );
                    }
                    // await(ApiAccounts()).deleteAccount({'id':item.id});
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 3,left: 3,right: 3,bottom: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red,
                    ),
                    child: const Icon(Icons.delete,color: Colors.white),
                  ),
                ),
              ],)
          ),
        ],
      );
  }

  Future getDataTableData() async{
    dataTableItems.clear();
    var response = await (CustomerModel()).getCustomers();
    response.forEach((element) {
      dataTableItems.add(element);
    });
    return dataTableItems;
  }


  @override
  Widget build(BuildContext context) {
        return
          Scaffold(
            backgroundColor: color.mainBodyApp,
            appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
                child: appBarClass('all Customers')
            ),
              body:
                  SingleChildScrollView(
                    child:
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:
                      Container(
                        margin: const EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: color.shadowBodyApp,
                              spreadRadius: 0.5,
                              blurRadius: 2,
                              offset: Offset(0.2, 0.2), // changes position of shadow
                            ),
                          ],
                        ),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10,top: 10),
                                  child: const Text('customers table',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                ),
                                const SizedBox(width: 10,),
                                GestureDetector(
                                  onTap: () async{
                                    // await(ApiContacts()).createContact({});
                                    Get.toNamed('/CreateCustomer');
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(top: 5,left: 10,right: 10,bottom: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green
                                    ),
                                    child: const Text('create customer',style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                              ],
                            ),
                            FutureBuilder(
                                future: getDataTableData(), // async work
                                builder: (context,snapshot) {
                                  if (snapshot.hasError) {
                                    return Text(
                                      snapshot.error.toString(),
                                    );
                                  } else if (snapshot.hasData) {
                                    return
                                      DataTable(columns: _createColumns(), rows: dataTableItems.map((item) => _createRow(item)).toList());
                                  }else{
                                    return const CircularProgressIndicator();
                                  }
                                }
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
          );
  }
}