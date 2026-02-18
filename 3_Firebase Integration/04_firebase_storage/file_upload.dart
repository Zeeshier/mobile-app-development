import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class StorageService {
  final FirebaseStorage storage = FirebaseStorage.instance;

  // Upload a file and get its URL
  Future<String> uploadFile(File file) async {
    // Create a reference to the file path
    final ref = storage.ref('uploads/${file.uri.pathSegments.last}');
    
    // Perform the upload
    final snapshot = await ref.putFile(file);
    
    // Retrieve the public download URL
    return snapshot.ref.getDownloadURL();
  }
}