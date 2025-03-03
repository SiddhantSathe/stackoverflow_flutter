// import 'package:flutter/material.dart';

// class AskQuestionPage extends StatefulWidget {
//   final Function(String, String) onSubmit;

//   AskQuestionPage({required this.onSubmit});

//   @override
//   _AskQuestionPageState createState() => _AskQuestionPageState();
// }

// class _AskQuestionPageState extends State<AskQuestionPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _titleController = TextEditingController();
//   final _detailsController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF7EBFB),
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: Text(
//           "Ask Question",
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Ask a public question",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 padding: EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Title",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Be specific and imagine you're asking a question to another person.",
//                       style: TextStyle(color: Colors.grey[600], fontSize: 12),
//                     ),
//                     TextFormField(
//                       controller: _titleController,
//                       decoration: InputDecoration(
//                         hintText: "Title",
//                         border: InputBorder.none,
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "Please enter a title";
//                         }
//                         return null;
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 16),
//               Container(
//                 padding: EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "What are the details of your problem?",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Introduce the problem and expand on what you put in the title. Minimum 20 characters.",
//                       style: TextStyle(color: Colors.grey[600], fontSize: 12),
//                     ),
//                     TextFormField(
//                       controller: _detailsController,
//                       maxLines: 5,
//                       decoration: InputDecoration(
//                         hintText: "Content",
//                         border: InputBorder.none,
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "Please enter details";
//                         }
//                         return null;
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 24),
//               Center(
//                 child: GestureDetector(
//                   onTap: () {
//                     if (_formKey.currentState!.validate()) {
//                       widget.onSubmit(
//                           _titleController.text, _detailsController.text);
//                       Navigator.pop(context);
//                     }
//                   },
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 14, horizontal: 32),
//                     decoration: BoxDecoration(
//                       color: Color(0xFFE5D0F7),
//                       borderRadius: BorderRadius.circular(24),
//                     ),
//                     child: Text(
//                       "Review your question",
//                       style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';

// class AskQuestionPage extends StatefulWidget {
//   final Function(String, String) onSubmit;

//   AskQuestionPage({required this.onSubmit});

//   @override
//   _AskQuestionPageState createState() => _AskQuestionPageState();
// }

// class _AskQuestionPageState extends State<AskQuestionPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _titleController = TextEditingController();
//   final _detailsController = TextEditingController();

//   final DatabaseReference _database = FirebaseDatabase.instance.ref('question_answers');

//   Future<void> _submitQuestion() async {
//     if (_formKey.currentState!.validate()) {
//       final question = {
//         'title': _titleController.text,
//         'details': _detailsController.text,
//         'timestamp': DateTime.now().toIso8601String(),
//       };

//       try {
//         await _database.push().set(question);
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Question submitted successfully!')),
//         );
//         widget.onSubmit(_titleController.text, _detailsController.text);
//         Navigator.pop(context);
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to submit question: $e')),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7EBFB),
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text(
//           "Ask Question",
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 "Ask a public question",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "Title",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Be specific and imagine you're asking a question to another person.",
//                       style: TextStyle(color: Colors.grey[600], fontSize: 12),
//                     ),
//                     TextFormField(
//                       controller: _titleController,
//                       decoration: const InputDecoration(
//                         hintText: "Title",
//                         border: InputBorder.none,
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "Please enter a title";
//                         }
//                         return null;
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "What are the details of your problem?",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Introduce the problem and expand on what you put in the title. Minimum 20 characters.",
//                       style: TextStyle(color: Colors.grey[600], fontSize: 12),
//                     ),
//                     TextFormField(
//                       controller: _detailsController,
//                       maxLines: 5,
//                       decoration: const InputDecoration(
//                         hintText: "Content",
//                         border: InputBorder.none,
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "Please enter details";
//                         }
//                         return null;
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 24),
//               Center(
//                 child: GestureDetector(
//                   onTap: _submitQuestion,
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFFE5D0F7),
//                       borderRadius: BorderRadius.circular(24),
//                     ),
//                     child: const Text(
//                       "Review your question",
//                       style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
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

// class AskQuestionPage extends StatefulWidget {
//   final Function(String, String) onSubmit;

//   AskQuestionPage({required this.onSubmit});

//   @override
//   _AskQuestionPageState createState() => _AskQuestionPageState();
// }

// class _AskQuestionPageState extends State<AskQuestionPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _titleController = TextEditingController();
//   final _detailsController = TextEditingController();

//   Future<void> _submitQuestion() async {
//     if (_formKey.currentState!.validate()) {
//       try {
//         await FirebaseFirestore.instance.collection('question_answers').add({
//           'title': _titleController.text,
//           'details': _detailsController.text,
//           'timestamp': FieldValue.serverTimestamp(),
//         });

//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Question submitted successfully!')),
//         );
//         widget.onSubmit(_titleController.text, _detailsController.text);
//         Navigator.pop(context);
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to submit question: $e')),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7EBFB),
//       appBar: AppBar(
//         title: const Text("Ask Question"),
//         backgroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _titleController,
//                 decoration: const InputDecoration(labelText: 'Title'),
//                 validator: (value) => value!.isEmpty ? 'Enter a title' : null,
//               ),
//               const SizedBox(height: 16),
//               TextFormField(
//                 controller: _detailsController,
//                 maxLines: 5,
//                 decoration: const InputDecoration(labelText: 'Details'),
//                 validator: (value) => value!.isEmpty ? 'Enter details' : null,
//               ),
//               const SizedBox(height: 24),
//               ElevatedButton(
//                 onPressed: _submitQuestion,
//                 child: const Text("Review Your Question"),
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

class AskQuestionPage extends StatefulWidget {
  final Function(String, String) onSubmit;

  AskQuestionPage({required this.onSubmit});

  @override
  _AskQuestionPageState createState() => _AskQuestionPageState();
}

class _AskQuestionPageState extends State<AskQuestionPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _detailsController = TextEditingController();

  Future<void> _submitQuestion() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection('question_answers').add({
          'title': _titleController.text,
          'details': _detailsController.text,
          'timestamp': FieldValue.serverTimestamp(),
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Question submitted successfully!')),
        );
        widget.onSubmit(_titleController.text, _detailsController.text);
        Navigator.pop(context);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to submit question: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7EBFB),
      appBar: AppBar(
        title: const Text("Ask Question", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ask a public question",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildInputField(
                title: "Title",
                subtitle: "Be specific and imagine you’re asking a question to another person.",
                controller: _titleController,
                hintText: "Title",
                validator: (value) => value!.isEmpty ? 'Enter a title' : null,
              ),
              const SizedBox(height: 16),
              _buildInputField(
                title: "What are the details of your problem?",
                subtitle: "Introduce the problem and expand on what you put in the title. Minimum 20 characters.",
                controller: _detailsController,
                hintText: "Content",
                maxLines: 5,
                validator: (value) => value!.isEmpty ? 'Enter details' : null,
              ),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: _submitQuestion,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.purple),
                    ),
                  ),
                  child: const Text(
                    "Review your question",
                    style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String title,
    required String subtitle,
    required TextEditingController controller,
    required String hintText,
    int maxLines = 1,
    required String? Function(String?) validator,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}