import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String username;
  final String email;
  String profilePicture;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.profilePicture,
  });

  // static function to create an empty model
  static UserModel empty() => UserModel(id: '', username: '', email: '', profilePicture: '');

  // convert model to JSON
  Map<String, dynamic> toJSON() {
    return {
      'Username': username,
      'Email': email,
      'ProfilePicture': profilePicture,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        username: data['Username'] ?? '',
        email: data['Email'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
      );
    } else {
      throw const FormatException('Invalid format');
    }
  }

}
