import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreProvider {
  Firestore _firestore = Firestore.instance;


  Future<void> registerUser(String email, String password) async {
    return _firestore
        .collection("users")
        .document(email)
        .setData({'email': email, 'password': password, 'goalAdded': false});
  }

  Stream<DocumentSnapshot> myGoalList(String documentId) {
    return _firestore.collection("users").document(documentId).snapshots();
  }

  Stream<QuerySnapshot> othersGoalList() {
    return _firestore
        .collection("users")
        .where('goalAdded', isEqualTo: true)
        .snapshots();
  }
}