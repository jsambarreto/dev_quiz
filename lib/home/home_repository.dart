import 'dart:convert';

import 'package:devquiz/shared/models/quiz_models.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = UserModel.fromJson(response);

    // final responseFirebase = await FirebaseFirestore.instance
    //     .collection('devquiz-jorge-default-rtdb')
    //     .get()
    //     .then((snapshot) {
    //   UserModel.fromJson(snapshot.toString());
    // });
    // //final user = responseFirebase;
    // print(user);
    return user;
  }

  Future<List<QuizModel>> getQuizzes() async {
    final response =
        await rootBundle.loadString("assets/database/quizzes.json");
    final list = jsonDecode(response) as List;
    final quizzes = list.map((e) => QuizModel.fromMap(e)).toList();
    return quizzes;
  }
}
