import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJSON());
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, message: e.message, plugin: '');
    } on FormatException catch (_) {
      throw const FormatException('Invalid user data format.');
    } on PlatformException catch (e) {
      throw PlatformException(code: e.code, message: e.message);
    } catch (e) {
      throw 'Something went wrong, please try again.';
    }
  }

  Future<UserModel?> getUserByUsername(String username) async {
    try {
      QuerySnapshot querySnapshot = await _db
          .collection('Users')
          .where('Username', isEqualTo: username)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final userData =
            querySnapshot.docs.first.data() as Map<String, dynamic>;
        return UserModel(
          id: querySnapshot.docs.first.id,
          username: userData['Username'] ?? '',
          email: userData['Email'] ?? '',
          profilePicture: userData['ProfilePicture'] ?? '',
        );
      } else {
        return null;
      }
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, message: e.message, plugin: '');
    } on FormatException catch (_) {
      throw const FormatException('Invalid user data format.');
    } on PlatformException catch (e) {
      throw PlatformException(code: e.code, message: e.message);
    } catch (e) {
      throw 'Something went wrong, please try again.';
    }
  }
}
