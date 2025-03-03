// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AnswerQuestionPage extends StatefulWidget {
//   final String title;

//   const AnswerQuestionPage({Key? key, required this.title}) : super(key: key);

//   @override
//   State<AnswerQuestionPage> createState() => _AnswerQuestionPageState();
// }

// class _AnswerQuestionPageState extends State<AnswerQuestionPage> {
//   final TextEditingController _answerController = TextEditingController();

//   void submitAnswer() {
//   final answer = _answerController.text;

//   // Assuming you have a questionId to identify the particular question
//   final questionId = widget.title;

//   // Save answer to Firestore
//   FirebaseFirestore.instance
//       .collection('question_answers')
//       .doc(questionId)
//       .collection('answers')
//       .add({
//     'answer': answer,
//     'timestamp': DateTime.now().toIso8601String(),
//   }).then((_) {
//     Navigator.pop(context); // Go back to the previous screen
//   });
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Answering: ${widget.title}"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               widget.title,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             TextField(
//               controller: _answerController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Your Answer',
//               ),
//               maxLines: 5,
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: submitAnswer,
//               child: const Text("Submit Answer"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AnswerQuestionPage extends StatefulWidget {
//   final String title;

//   const AnswerQuestionPage({Key? key, required this.title}) : super(key: key);

//   @override
//   State<AnswerQuestionPage> createState() => _AnswerQuestionPageState();
// }

// class _AnswerQuestionPageState extends State<AnswerQuestionPage> {
//   final TextEditingController _answerController = TextEditingController();

//   void submitAnswer() {
//     final answer = _answerController.text;

//     // Assuming you have a questionId to identify the particular question
//     final questionId = widget.title;

//     // Save answer to Firestore
//     FirebaseFirestore.instance
//         .collection('question_answers')
//         .doc(questionId)
//         .collection('answers')
//         .add({
//       'answer': answer,
//       'timestamp': DateTime.now().toIso8601String(),
//     }).then((_) {
//       Navigator.pop(context); // Go back to the previous screen
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7EBFB),
//       appBar: AppBar(
//         title: Text("Answering: ${widget.title}"),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 widget.title,
//                 style: const TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 controller: _answerController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Your Answer',
//                   alignLabelWithHint: true,
//                 ),
//                 maxLines: 10,
//                 minLines: 5,
//               ),
//               const SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   ElevatedButton(
//                     onPressed: submitAnswer,
//                     child: const Text("Submit Answer"),
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 24,
//                         vertical: 12,
//                       ),
//                       textStyle: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AnswerQuestionPage extends StatefulWidget {
//   final String title;

//   const AnswerQuestionPage({Key? key, required this.title}) : super(key: key);

//   @override
//   State<AnswerQuestionPage> createState() => _AnswerQuestionPageState();
// }

// class _AnswerQuestionPageState extends State<AnswerQuestionPage> {
//   final TextEditingController _answerController = TextEditingController();

//   void submitAnswer() {
//     final answer = _answerController.text;

//     // Assuming you have a questionId to identify the particular question
//     final questionId = widget.title;

//     // Save answer to Firestore
//     FirebaseFirestore.instance
//         .collection('question_answers')
//         .doc(questionId)
//         .collection('answers')
//         .add({
//       'answer': answer,
//       'timestamp': DateTime.now().toIso8601String(),
//     }).then((_) {
//       Navigator.pop(context); // Go back to the previous screen
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Answering: ${widget.title}"),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 widget.title,
//                 style: const TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 controller: _answerController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Your Answer',
//                   alignLabelWithHint: true,
//                 ),
//                 maxLines: 10,
//                 minLines: 5,
//               ),
//               const SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   ElevatedButton(
//                     onPressed: submitAnswer,
//                     child: const Text("Submit Answer"),
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 24,
//                         vertical: 12,
//                       ),
//                       textStyle: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AnswerQuestionPage extends StatefulWidget {
  final String title;
  const AnswerQuestionPage({Key? key, required this.title}) : super(key: key);
  @override
  State<AnswerQuestionPage> createState() => _AnswerQuestionPageState();
}

class _AnswerQuestionPageState extends State<AnswerQuestionPage> {
  final TextEditingController _answerController = TextEditingController();
  void submitAnswer() {
    final answer = _answerController.text;
    // Assuming you have a questionId to identify the particular question
    final questionId = widget.title;
    // Save answer to Firestore
    FirebaseFirestore.instance
        .collection('question_answers')
        .doc(questionId)
        .collection('answers')
        .add({
      'answer': answer,
      'timestamp': DateTime.now().toIso8601String(),
    }).then((_) {
      Navigator.pop(context); // Go back to the previous screen
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // Make sure this color matches the one in your screenshot (very light mint/lavender)
    const backgroundColor = Color(0xFFF3F8F9);
    
    return Scaffold(
      // backgroundColor: backgroundColor,
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Question Details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: backgroundColor,
          
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _answerController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Answer',
                  alignLabelWithHint: true,
                  filled: true,
                  fillColor: Colors.white,
                ),
                maxLines: 10,
                minLines: 5,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: submitAnswer,
                style: ElevatedButton.styleFrom(
                  // backgroundColor: const Color.fromARGB(255, 218, 131, 244),
                  backgroundColor: const Color.fromARGB(255, 229, 166, 240),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text("Answer Question"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Additionally, here's a possible QuestionDetailsPage class that would match your screenshot
class QuestionDetailsPage extends StatelessWidget {
  final String title;
  final String content;
  final String timestamp;
  final List<Map<String, dynamic>> answers;

  const QuestionDetailsPage({
    Key? key,
    required this.title,
    required this.content,
    required this.timestamp,
    required this.answers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFFF3F8F9);
    
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Question Details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Posted on: $timestamp",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnswerQuestionPage(
                            title: title,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.purple.shade100,
                      side: const BorderSide(color: Color.fromARGB(255, 244, 133, 229)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                    child: const Text("Answer Question"),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
              child: Text(
                "Answers:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...answers.map((answer) => _buildAnswerCard(answer)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerCard(Map<String, dynamic> answer) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              answer['text'],
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              "Answered on: ${answer['timestamp']}",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}