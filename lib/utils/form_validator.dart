class FormValidator {
  static String? login(String? value) {
    if (value == null || value == '') return fieldRequiredError;

    if (value.trim().isEmpty) return fieldRequiredError;

    if (!nameValidatorRegExp.hasMatch(value)) return invalidNameError;

    return null;
  }
}

final RegExp nameValidatorRegExp = RegExp("^[a-zA-Z]+\$");

const String fieldRequiredError = "This field required";

const String invalidNameError =
    "Special characters and numbers are not accepted";
