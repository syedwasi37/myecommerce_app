class FormValidator {
  static String? validateName(String? input) {
    if (input!.isEmpty) {
      return "Name is Required";
    }
    return null;
  }

  static String? validateEmail(String? input) {
    if (input!.isEmpty) {
      return "Email is Required";
    } else if (!input.contains("@") || !input.contains(".com")) {
      return "Email is not Valid";
    }
    return null;
  }

  static String? validatePhone(String? input) {
    final pakistanPhonePattern = RegExp(
      r"^((\+92)?(0092)?(92)?(0)?)(3)([0-9]{9})$",
    );

    if (input!.isEmpty) {
      return "Phone is Required";
    } else if (!pakistanPhonePattern.hasMatch(input)) {
      return "Phone Pattern is not Valid";
    }
    return null;
  }

  static String? validatePassword(String? input) {
  if (input == null || input.isEmpty) {
    return "Password is Required";
  }

  // Must be at least 8 characters
  if (input.length < 8) {
    return "Password must be at least 8 characters long";
  }

  // Must contain uppercase
  if (!RegExp(r'[A-Z]').hasMatch(input)) {
    return "Include at least one uppercase letter (A-Z)";
  }

  // Must contain lowercase
  if (!RegExp(r'[a-z]').hasMatch(input)) {
    return "Include at least one lowercase letter (a-z)";
  }

  // Must contain number
  if (!RegExp(r'[0-9]').hasMatch(input)) {
    return "Include at least one number";
  }

  // Must contain special character
  if (!RegExp(r'[!@#\$&*~%^-_=+]').hasMatch(input)) {
    return "Include at least one special character";
  }

  return null;
}

  static String? validateConfirmPassword(String? input, String password) {
  if (input == null || input.isEmpty) {
    return "Confirm Password is Required";
  }
  if (input != password) {
    return "Passwords do not match";
  }
  return null;
}
}
