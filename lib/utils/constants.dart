import 'package:actions_cicd/controllers/auth_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';

List pages = [
  // VideoScreen(),
  // SearchScreen(),
  // const AddVideoScreen(),
  // const ChatScreen(),
  // ProfileScreen(uid: authController.user.uid),
  const Center(child: Text("Video Screen")),
  const Center(child: Text("Search Screen")),
  const Center(child: Text("AddVideo Screen")),
  const Center(child: Text("Messages Screen")),
  const Center(child: Text("Profile Screen")),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;
