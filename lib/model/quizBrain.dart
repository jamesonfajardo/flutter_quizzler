import 'package:quickquiz/model/qna.dart';

class QuizBrain {
  List<QnA> _qnas = [
    QnA(question: 'Some cats are actually allergic to humans', answer: true),
    QnA(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    QnA(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    QnA(question: 'A slug\'s blood is green.', answer: true),
    QnA(
        question: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        answer: true),
    QnA(
        question: 'It is illegal to pee in the Ocean in Portugal.',
        answer: true),
    QnA(
        question:
            'No piece of square dry paper can be folded in half more than 7 times.',
        answer: false),
    QnA(
        question:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answer: true),
    QnA(
        question:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        answer: false),
    QnA(
        question:
            'The total surface area of two human lungs is approximately 70 square metres.',
        answer: true),
    QnA(question: 'Google was originally called \"Backrub\".', answer: true),
    QnA(
        question:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        answer: true),
    QnA(
        question:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        answer: true),
  ];

  int qCount() => _qnas.length;
  String getQuestion(int index) => _qnas[index].question;
  bool getAnswer(int index) => _qnas[index].answer;
}
