
class Validators{

  static String? validateEmail(String input) {
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(input);
    if(!emailValid){
      return 'Enter Valid Email';
    }
    if (input.isEmpty) {
      return 'Email must have value';
    }
    return null;
  }

  static String? phoneNumberValidator(String input) {
    bool phoneValid = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(input);
    if (!phoneValid) {
      return 'Enter Valid Phone Number';
    }
    if (input.isEmpty) {
      return 'Phone Number must have value';
    }
    return null;
  }

  static String? bankAccountNumberValidator(String input) {
    bool phoneValid = RegExp(r'[a-zA-Z]{2}[0-9]{2}[a-zA-Z0-9]{4}[0-9]{7}([a-zA-Z0-9]?){0,16}').hasMatch(input);
    if (!phoneValid) {
      return 'Enter Valid International Bank Account Number';
    }
    if (input.isEmpty) {
      return 'Bank Account Number must have value';
    }
    return null;
  }

}