import 'package:flutter/cupertino.dart';

class ModelApp27 {
  static int index = 0;
  static List<QuestionSet> questions = [
    //Q1
    QuestionSet(
      QuestionsEnum.qABN,
      QuestionsEnum.qBBN,
      QuestionsEnum.qCBN,
      QuestionsEnum.qDBN,
      QuestionsEnum.qAEN,
    ),
    //Q2
    QuestionSet(
      QuestionsEnum.qBBN,
      QuestionsEnum.qGBN,
      QuestionsEnum.qDBN,
      QuestionsEnum.qEBN,
      QuestionsEnum.qBEN,
    ),
    //Q3
    QuestionSet(
      QuestionsEnum.qABN,
      QuestionsEnum.qBBN,
      QuestionsEnum.qCBN,
      QuestionsEnum.qDBN,
      QuestionsEnum.qCEN,
    ),
    //Q4
    QuestionSet(
      QuestionsEnum.qABN,
      QuestionsEnum.qBBN,
      QuestionsEnum.qCBN,
      QuestionsEnum.qDBN,
      QuestionsEnum.qDEN,
    ),
    //Q5
    QuestionSet(
      QuestionsEnum.qABN,
      QuestionsEnum.qBBN,
      QuestionsEnum.qCBN,
      QuestionsEnum.qDBN,
      QuestionsEnum.qEEN,
    ),
    //Q6
    QuestionSet(
      QuestionsEnum.qABN,
      QuestionsEnum.qBBN,
      QuestionsEnum.qCBN,
      QuestionsEnum.qDBN,
      QuestionsEnum.qFEN,
    ),
    //Q7
    QuestionSet(
      QuestionsEnum.qABN,
      QuestionsEnum.qBBN,
      QuestionsEnum.qCBN,
      QuestionsEnum.qDBN,
      QuestionsEnum.qGEN,
    ),
  ];
}

class Question {
  Question(String key, QuestionSet questionSet) {
    mapQes[key] = questionSet;
  }

  Map<String, QuestionSet> mapQes = {};
}

class QuestionSet {
  QuestionSet(this.qa, this.qb, this.qc, this.qd, this.ans);

  final String qa;
  final String qb;
  final String qc;
  final String qd;
  final String ans;
}

class QuestionsEnum {
  static String qABN = 'মহিউদ্দীন জাহাঙ্গীর';
  static String qBBN = 'মোহাম্মদ রুহুল আমিন';
  static String qCBN = 'মোহাম্মদ মোস্তফা কামাল';
  static String qDBN = 'হামিদুর রহমান';
  static String qEBN = 'মতিউর রহমান';
  static String qFBN = 'মুন্সী আবদুর রউফ';
  static String qGBN = 'নূর মোহাম্মদ শেখ';

  static String qAEN = 'mohiuddin_jahangir';
  static String qBEN = 'mohammad_ruhul_amin';
  static String qCEN = 'mohammad_mustafa_kamal';
  static String qDEN = 'hamidur_rahman';
  static String qEEN = 'motiur_rahman';
  static String qFEN = 'munshi_abdur_raouf';
  static String qGEN = 'nur_mohammad_sheikh';
}
