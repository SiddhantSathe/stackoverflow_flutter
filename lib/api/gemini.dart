// import 'dart:io';
// import 'package:google_generative_ai/google_generative_ai.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

// void main() async {
//   await dotenv.load(); // Initialize dotenv
//   // final apiKey = Platform.environment['GEMINI_API_KEY'];
//   final apiKey = env['GEMINI_API_KEY'];
//   if (apiKey == null) {
//     stderr.writeln(r'No $GEMINI_API_KEY environment variable');
//     exit(1);
//   }

//   final model = GenerativeModel(
//     model: 'gemini-2.0-pro-exp-02-05',
//     apiKey: apiKey,
//     generationConfig: GenerationConfig(
//       temperature: 1,
//       topK: 64,
//       topP: 0.95,
//       maxOutputTokens: 8192,
//       responseMimeType: 'text/plain',
//     ),
//   );

//   final chat = model.startChat(history: [
//   ]);
//   final message = 'INSERT_INPUT_HERE';
//   final content = Content.text(message);

//   final response = await chat.sendMessage(content);
//   print(response.text);
// }



import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

class ChatbotPage extends StatefulWidget {
  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  late GenerativeModel _model;
  late ChatSession _chat;
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> _messages = [];

  @override
  void initState() {
    super.initState();
    _initializeGemini();
  }

  Future<void> _initializeGemini() async {
    // await dotenv.load();
    // final apiKey = dotenv.env['GEMINI_API_KEY'];
    final apiKey = "AIzaSyDH1uk6E1g7RHAh3eFz4LHkNCG5mX9FP2Y";
    if (apiKey == null) {
      print("GEMINI_API_KEY not found");
      return;
    }

    _model = GenerativeModel(
      model: 'gemini-2.0-pro-exp-02-05',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        temperature: 1,
        topK: 64,
        topP: 0.95,
        maxOutputTokens: 8192,
        responseMimeType: 'text/plain',
      ),
    );
    _chat = _model.startChat(history: []);
  }

  Future<void> _sendMessage() async {
    if (_controller.text.trim().isEmpty) return;

    String userMessage = _controller.text.trim();
    setState(() {
      _messages.add({"role": "user", "text": userMessage});
      _controller.clear();
    });

    final response = await _chat.sendMessage(Content.text(userMessage));

    setState(() {
      _messages.add({"role": "bot", "text": response.text ?? "Error processing response"});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: const Text("Gemini Chatbot", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                bool isUser = message["role"] == "user";

                return Align(
                  alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: isUser ? Colors.orange.shade100 : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      message["text"]!,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Ask something...",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.orange),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
