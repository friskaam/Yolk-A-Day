class FormValidator {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is required';
    }

    if (value.length < 5) {
      return 'Username must be at least 5 characters long.';
    }

    if (!RegExp(r'^\w+$').hasMatch(value)) {
      return 'Username can only contain letters, numbers, and underscores.';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  static validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters long.';
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter.';
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter.';
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one number.';
    }

    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character.';
    }
    return null;
  }

  static String? validateConfirmPassword(String? originalPassword, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Password is required.';
    }

    if (confirmPassword != originalPassword) {
      return 'Passwords do not match.';
    }
    return null;
  }
}