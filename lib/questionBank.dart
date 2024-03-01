// questionBank.dart

import 'package:flutter/material.dart';

class Question {
  String statement;
  bool answer;

  Question(this.statement, this.answer);
}

List<Question> questionBank = [
  Question('Germany is the largest country in Europe.', false),
  Question('The capital city of Germany is Berlin.', true),
  Question('German is the most widely spoken language in the world.', false),
  Question('The Black Forest is a mountain range in Germany.', true),
  Question('Germany is known for its famous Oktoberfest celebration.', true),
  Question('The currency used in Germany is the Euro.', true),
  Question('The Berlin Wall fell in 1989.', true),
  Question('The Neuschwanstein Castle is located in Germany.', true),
  Question('The autobahn in Germany has no speed limits.', true),
  Question(
      'The official name of Germany is the Federal Republic of Germany.', true),
  Question('The Rhine River is the longest river in Germany.', false),
  Question('Germany is known for its high-quality beer.', true),
  Question('The Brandenburg Gate is located in Munich.', false),
  Question('Albert Einstein, the famous physicist, was born in Germany.', true),
  Question('The highest mountain in Germany is the Zugspitze.', true),
  Question('Germany has 16 federal states.', true),
  Question('The traditional German folk dance is called the Polka.', false),
  Question(
      'The German national football team has won the FIFA World Cup four times.',
      true),
  Question('The Cologne Cathedral is the largest cathedral in Germany.', true),
  Question('The German flag consists of black, red, and green stripes.', false),
];
