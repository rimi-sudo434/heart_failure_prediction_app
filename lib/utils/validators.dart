class Validators {
  Validators._();

  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter patient's name";
    }
    if (value.trim().length < 2) {
      return "Name must contain at least 2 characters";
    }
    return null;
  }

  static String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter age";
    }

    final age = int.tryParse(value);

    if (age == null) {
      return "Age must be a number";
    }

    if (age < 1 || age > 120) {
      return "Age must be between 1 and 120";
    }

    return null;
  }

  static String? validateRequiredNumber(
    String? value,
    String fieldName,
  ) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter $fieldName";
    }

    if (double.tryParse(value) == null) {
      return "$fieldName must be a valid number";
    }

    return null;
  }

  static String? validateHeartRate(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter heart rate";
    }

    final hr = int.tryParse(value);

    if (hr == null) {
      return "Heart rate must be a number";
    }

    if (hr < 30 || hr > 220) {
      return "Heart rate must be between 30 and 220 bpm";
    }

    return null;
  }

  static String? validatePercentage(
    String? value,
    String fieldName,
  ) {
    if (value == null || value.isEmpty) {
      return "Please enter $fieldName";
    }

    final number = double.tryParse(value);

    if (number == null) {
      return "$fieldName must be numeric";
    }

    if (number < 0 || number > 100) {
      return "$fieldName must be between 0 and 100";
    }

    return null;
  }
}