

class TValidator{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }
    return null;
  }
  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required.';
    }

    // Check for minimum Length Password
    if(value.length < 6){
      return 'Password must be at least 6 characters long';
    }

    // Check for Uppercase letters
    if(value.contains(RegExp(r'[A-Z]')) ){
      return 'Password must contain at least one Uppercase letter';
    }

    // Check for numbers
    if(value.contains(RegExp(r'[0-9]')) ){
      return 'Password must contain at least one number';
    }

    // Check for Uppercase letters
    if(value.contains(RegExp(r'[!@#$%^&*()?"{}|<>]')) ){
      return 'Password must contain at least one special characters';
    }
    return null;
  }
}