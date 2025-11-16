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
    if (input!.isEmpty) {
      return "Password is Required";
    } else if (input.length < 6) {
      return "Password must contain more than 6 characters";
    }
    return null;
  }

  static String? validateConfirmPassword(String? input, password) {
    if (input!.isEmpty) {
      return "Confirm Password is Required";
    } else if (input != password) {
      return "Password does not match";
    }
    return null;
  }
}
