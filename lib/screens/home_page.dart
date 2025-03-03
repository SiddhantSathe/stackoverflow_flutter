// import 'package:flutter/material.dart';
// import 'ask_question.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple.shade50,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: const Text(
//           "Questions",
//           style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               // Navigate to the Ask Question page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => AskQuestionPage()),
//               );
//             },
//             child: const Text(
//               "Ask Question",
//               style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const SizedBox(width: 10),
//         ],
//       ),
//       body: Center(
//         child: Container(
//           padding: const EdgeInsets.all(20),
//           margin: const EdgeInsets.symmetric(horizontal: 24),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black12,
//                 blurRadius: 10,
//                 spreadRadius: 2,
//               ),
//             ],
//           ),
//           child: const Text(
//             "The questions has not asked yet!",
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
            
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings), // Added Settings Icon
//             label: "Settings",
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'ask_question.dart';
// import 'profile_page.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     Center(
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         margin: const EdgeInsets.symmetric(horizontal: 24),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 10,
//               spreadRadius: 2,
//             ),
//           ],
//         ),
//         child: const Text(
//           "The questions has not asked yet!",
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//       ),
//     ),
//     ProfilePage(),
//     Center(
//       child: Text(
//         "Settings Page",
//         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple.shade50,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: const Text(
//           "Questions",
//           style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => AskQuestionPage()),
//               );
//             },
//             child: const Text(
//               "Ask Question",
//               style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const SizedBox(width: 10),
//         ],
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "Settings",
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'ask_question.dart';
// import 'profile_page.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     Center(
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         margin: const EdgeInsets.symmetric(horizontal: 24),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 10,
//               spreadRadius: 2,
//             ),
//           ],
//         ),
//         child: const Text(
//           "The questions has not asked yet!",
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//       ),
//     ),
//     ProfilePage(),
//     Center(
//       child: Text(
//         "Settings Page",
//         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//     ),
//   ];

//   final List<String> _appBarTitles = [
//     "Questions",
//     "My Profile",
//     "Settings"
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple.shade50,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: Text(
//           _appBarTitles[_selectedIndex],
//           style: const TextStyle(
//               color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         actions: _selectedIndex == 0
//             ? [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => AskQuestionPage()),
//                     );
//                   },
//                   child: const Text(
//                     "Ask Question",
//                     style: TextStyle(
//                         color: Colors.purple, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//               ]
//             : [],
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "Settings",
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'ask_question.dart';
// import 'profile_page.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;
//   final List<String> _appBarTitles = ["Questions", "My Profile", "Settings"];

//   // Firebase reference
//   final DatabaseReference _database = FirebaseDatabase.instance.ref('question_answers');

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void addQuestion(String title, String details) {
//     _database.push().set({
//       'title': title,
//       'details': details,
//       'timestamp': DateTime.now().toIso8601String(),
//     });
//   }

//   List<Widget> get _pages => [
//        StreamBuilder<QuerySnapshot>(
//   stream: FirebaseFirestore.instance.collection('question_answers').snapshots(),
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return const Center(child: CircularProgressIndicator());
//     }

//     if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//       return const Center(child: Text("No questions asked yet"));
//     }

//     final questions = snapshot.data!.docs;

//     return ListView.builder(
//       itemCount: questions.length,
//       itemBuilder: (context, index) {
//         final question = questions[index].data() as Map<String, dynamic>;
//         return ListTile(
//           title: Text(question['title'] ?? 'No title'),
//           subtitle: Text(question['details'] ?? 'No details'),
//           leading: const Icon(Icons.question_answer, color: Colors.purple),
//         );
//       },
//     );
//   },
// ),

//         ProfilePage(),
//         const Center(
//           child: Text("Settings Page", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//         ),
//       ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple.shade50,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: Text(
//           _appBarTitles[_selectedIndex],
//           style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         actions: _selectedIndex == 0
//             ? [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => AskQuestionPage(onSubmit: addQuestion),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     "Ask Question",
//                     style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//               ]
//             : [],
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'ask_question.dart';
// import 'profile_page.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;
//   final List<String> _appBarTitles = ["Questions", "My Profile", "Settings"];

//   // Firebase reference
//   final DatabaseReference _database = FirebaseDatabase.instance.ref('question_answers');

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void addQuestion(String title, String details) {
//     _database.push().set({
//       'title': title,
//       'details': details,
//       'timestamp': DateTime.now().toIso8601String(),
//     });
//   }

//   List<Widget> get _pages => [
//         StreamBuilder<QuerySnapshot>(
//           stream: FirebaseFirestore.instance.collection('question_answers').snapshots(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(child: CircularProgressIndicator());
//             }

//             if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//               return const Center(child: Text("No questions asked yet"));
//             }

//             final questions = snapshot.data!.docs;

//             return ListView.builder(
//               itemCount: questions.length,
//               itemBuilder: (context, index) {
//                 final question = questions[index].data() as Map<String, dynamic>;
//                 return ListTile(
//                   title: Text(question['title'] ?? 'No title'),
//                   subtitle: Text(question['details'] ?? 'No details'),
//                   leading: const Icon(Icons.question_answer, color: Colors.purple),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => QuestionDetailPage(
//                           title: question['title'] ?? 'No title',
//                           details: question['details'] ?? 'No details',
//                           timestamp: question['timestamp'] ?? '',
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             );
//           },
//         ),
//         ProfilePage(),
//         const Center(
//           child: Text("Settings Page", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//         ),
//       ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple.shade50,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: Text(
//           _appBarTitles[_selectedIndex],
//           style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         actions: _selectedIndex == 0
//             ? [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => AskQuestionPage(onSubmit: addQuestion),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     "Ask Question",
//                     style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//               ]
//             : [],
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
//         ],
//       ),
//     );
//   }
// }

// class QuestionDetailPage extends StatelessWidget {
//   final String title;
//   final String details;
//   final String timestamp;

//   const QuestionDetailPage({
//     Key? key,
//     required this.title,
//     required this.details,
//     required this.timestamp,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Question Details"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               details,
//               style: const TextStyle(fontSize: 18),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               "Posted on: $timestamp",
//               style: const TextStyle(fontSize: 14, color: Colors.grey),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'ask_question.dart';
// import 'profile_page.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;
//   final List<String> _appBarTitles = ["Questions", "My Profile", "Settings"];

//   // Firebase reference
//   final DatabaseReference _database = FirebaseDatabase.instance.ref('question_answers');

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void addQuestion(String title, String details) {
//     _database.push().set({
//       'title': title,
//       'details': details,
//       'timestamp': DateTime.now().toIso8601String(),
//     });
//   }

//   List<Widget> get _pages => [
//         StreamBuilder<QuerySnapshot>(
//           stream: FirebaseFirestore.instance.collection('question_answers').snapshots(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(child: CircularProgressIndicator());
//             }

//             if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//               return const Center(child: Text("No questions asked yet"));
//             }

//             final questions = snapshot.data!.docs;

//             return ListView.builder(
//               itemCount: questions.length,
//               itemBuilder: (context, index) {
//                 final question = questions[index].data() as Map<String, dynamic>;
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => QuestionDetailPage(
//                             title: question['title'] ?? 'No title',
//                             details: question['details'] ?? 'No details',
//                             timestamp: question['timestamp'] ?? '',
//                           ),
//                         ),
//                       );
//                     },
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           question['title'] ?? 'No title',
//                           style: const TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           question['details'] ?? 'No details',
//                           style: const TextStyle(fontSize: 14),
//                         ),
//                       ],
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.black,
//                       elevation: 4,
//                       padding: const EdgeInsets.all(16),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//         ProfilePage(),
//         const Center(
//           child: Text("Settings Page", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//         ),
//       ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple.shade50,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: Text(
//           _appBarTitles[_selectedIndex],
//           style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         actions: _selectedIndex == 0
//             ? [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => AskQuestionPage(onSubmit: addQuestion),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     "Ask Question",
//                     style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//               ]
//             : [],
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
//         ],
//       ),
//     );
//   }
// }

// class QuestionDetailPage extends StatelessWidget {
//   final String title;
//   final String details;
//   final String timestamp;

//   const QuestionDetailPage({
//     Key? key,
//     required this.title,
//     required this.details,
//     required this.timestamp,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Question Details"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               details,
//               style: const TextStyle(fontSize: 18),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               "Posted on: $timestamp",
//               style: const TextStyle(fontSize: 14, color: Colors.grey),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'ask_question.dart';
import 'profile_page.dart';
import 'answer_page.dart';
import '../api/gemini.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<String> _appBarTitles = ["Questions", "My Profile", "Chatbot"];

  // Firebase reference
  final DatabaseReference _database = FirebaseDatabase.instance.ref('question_answers');

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void addQuestion(String title, String details) {
    _database.push().set({
      'title': title,
      'details': details,
      'timestamp': DateTime.now().toIso8601String(),
    });
  }

  List<Widget> get _pages => [
        StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('question_answers').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return const Center(child: Text("No questions asked yet"));
            }

            final questions = snapshot.data!.docs;

            return ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final question = questions[index].data() as Map<String, dynamic>;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionDetailPage(
                            title: question['title'] ?? 'No title',
                            details: question['details'] ?? 'No details',
                            timestamp: (question['timestamp'] as Timestamp).toDate().toString(),
                          ),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            question['title'] ?? 'No title',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            question['details'] ?? 'No details',
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 4,
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
        ProfilePage(),
        ChatbotPage(),
        // const Center(
        //   child: Text("Settings Page", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        // ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          _appBarTitles[_selectedIndex],
          style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: _selectedIndex == 0
            ? [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AskQuestionPage(onSubmit: addQuestion),
                      ),
                    );
                  },
                  child: const Text(
                    "Ask Question",
                    style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 10),
              ]
            : [],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chatbot"),
        ],
      ),
    );
  }
}

class QuestionDetailPage extends StatelessWidget {
  final String title;
  final String details;
  final String timestamp;

  const QuestionDetailPage({
    Key? key,
    required this.title,
    required this.details,
    required this.timestamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: const Text("Question Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              details,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              "Posted on: ${DateTime.parse(timestamp).toString()}",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnswerQuestionPage(title: title),
                  ),
                );
              },
              child: const Text("Answer Question"),
            ),
            const SizedBox(height: 16),
            const Text(
              "Answers:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('question_answers')
                    .doc(title)
                    .collection('answers')
                    .orderBy('timestamp', descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return const Center(child: Text("No answers yet"));
                  }

                  final answers = snapshot.data!.docs;

                  return ListView.builder(
                    itemCount: answers.length,
                    itemBuilder: (context, index) {
                      final answer = answers[index].data() as Map<String, dynamic>;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                answer['answer'] ?? 'No answer',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Answered on: ${DateTime.parse(answer['timestamp']).toString()}",
                                style: const TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
