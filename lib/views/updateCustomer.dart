import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mc_crud_test/models/Collections/Customer.dart';
import 'package:mc_crud_test/models/Customer.dart';
import 'package:mc_crud_test/utils/Validators.dart';
import '../../colors.dart' as color;
import '../controller/CustomerController.dart';
import '../utils/CardNumberInputFormatter.dart';
import '../widgets/AppBar.dart';
import 'package:intl/intl.dart';

class UpdateCustomer extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  String id = Get.arguments['id'];
  String firstName = Get.arguments['firstName'];
  String lastName = Get.arguments['lastName'];
  String email = Get.arguments['email'];
  String phoneNumber = Get.arguments['phoneNumber'];
  String bankAccountNumber = Get.arguments['bankAccountNumber'];
  DateTime dateOfBirth = Get.arguments['dateOfBirth'];
  final CustomerController _customerController = Get.put(CustomerController());

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: color.mainBodyApp,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: appBarClass('update Customer')
          ),
          body:
          SingleChildScrollView(
                        child:
                          Container(
                            margin: const EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: color.mainBodyAppText,
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
                                Container(
                                  margin: const EdgeInsets.only(right: 10,top: 10,left: 10,bottom: 10),
                                  child: const Text('sample crud form Customer ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Form(
                                    key: _formKey,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const Text('First name:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                        TextFormField(
                                          initialValue: firstName,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'First name',
                                          ),
                                          keyboardType: TextInputType.name,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'First name must have value';
                                            }
                                            return null;
                                          },
                                          onSaved: (value){
                                            firstName = value!;
                                          },
                                        ),
                                        const SizedBox(height: 5,),
                                        const Text('Last name:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                        TextFormField(
                                          initialValue: lastName,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Last name',
                                          ),
                                          keyboardType: TextInputType.name,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Last name must have value';
                                            }
                                            return null;
                                          },
                                          onSaved: (value){
                                            lastName = value!;
                                          },
                                        ),
                                        const SizedBox(height: 5,),
                                        const Text('Date Of Birth:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                        Obx(
                                              ()=>
                                                  GestureDetector(
                                                    child:
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      padding: const EdgeInsets.only(right: 5,left: 5,bottom: 20,top: 20),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.grey),
                                                          borderRadius: BorderRadius.circular(3)
                                                      ),
                                                      child:
                                                      Text((_customerController.selectedDate.value != dateOfBirth)?DateFormat('yyyy-MM-dd').format(dateOfBirth).toString():
                                                      DateFormat('yyyy-MM-dd').format(_customerController.selectedDate.value).toString()),
                                                    ),
                                                    onTap: () async{
                                                      _customerController.selectedDate.value = dateOfBirth;
                                                      final DateTime? picked = await showDatePicker(
                                                          context: context,
                                                          initialDate: _customerController.selectedDate.value,
                                                          firstDate: DateTime(2015, 8),
                                                          lastDate: DateTime(2101));
                                                      if (picked != null && picked != _customerController.selectedDate.value) {
                                                        _customerController.selectedDate.value = picked;
                                                        dateOfBirth = picked;
                                                      }
                                                      },
                                                    ),
                                        ),
                                        const SizedBox(height: 5,),
                                        const Text('Phone Number:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                        TextFormField(
                                          initialValue: phoneNumber,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Phone Number',
                                          ),
                                          keyboardType: TextInputType.phone,
                                          validator: (value) =>Validators.phoneNumberValidator(value!),
                                          onSaved: (value){
                                            phoneNumber = value!;
                                          },
                                        ),
                                        const SizedBox(height: 5,),
                                        const Text('Email:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                        TextFormField(
                                          initialValue: email,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Email',
                                          ),
                                          keyboardType: TextInputType.emailAddress,
                                          validator: (value) => Validators.validateEmail(value!),
                                          onSaved: (value){
                                            email = value!;
                                          },
                                        ),
                                        const SizedBox(height: 5,),
                                        const Text('Bank Account Number:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                        TextFormField(
                                          initialValue: bankAccountNumber,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Bank Account Number',
                                          ),
                                          validator: (value) => Validators.bankAccountNumberValidator(value!),
                                          // inputFormatters: [
                                          //   CardNumberInputFormatter(),
                                          // ],
                                          onSaved: (value){
                                            bankAccountNumber = value!;
                                          },
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          ElevatedButton(
                                            onPressed: () async{
                                              CustomerModel _customerModel = CustomerModel();
                                              _customerModel.getCustomers();
                                              if (_formKey.currentState!.validate()) {
                                                _formKey.currentState!.save();
                                                final newCustomer = Customer()
                                                  ..id = int.parse(id)
                                                  ..firstName = firstName.toString()
                                                  ..lastName = lastName.toString()
                                                  ..email = email.toString()
                                                  ..bankAccountNumber = bankAccountNumber.toString()
                                                  ..phoneNumber = phoneNumber.toString()
                                                  ..dateOfBirth = dateOfBirth
                                                ;
                                                bool success = await _customerModel.updateCustomer(newCustomer);
                                                if(success) {
                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                    const SnackBar(content: Text('submit successful')),
                                                  );
                                                }else{
                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                    const SnackBar(content: Text('your data had been submit before.')),
                                                  );
                                                }
                                                Get.offAllNamed('/');
                                              }
                                            },
                                            child: const Text('submit'),
                                          ),
                                        ],),
                                      ],
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ),
                      )
      );
  }
}