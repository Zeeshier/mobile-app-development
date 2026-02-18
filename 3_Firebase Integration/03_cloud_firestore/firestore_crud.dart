import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  // Add a new document to a collection 
  Future<void> addNote(String title) async {
    await db.collection('notes').add({
      'title': title,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  // Read a collection as a real-time stream 
  Stream<QuerySnapshot> getNotes() {
    return db.collection('notes').orderBy('timestamp').snapshots();
  }
}