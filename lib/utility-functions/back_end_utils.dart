import 'package:firebase_auth/firebase_auth.dart';

class BackEndUtils {
  static String getCurrentUserId() => FirebaseAuth.instance.currentUser!.uid;
}
