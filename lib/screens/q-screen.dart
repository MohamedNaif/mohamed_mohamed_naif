import 'dart:async';
import 'package:flutter/material.dart';
import '../shared/CategoryButton.dart';
import '../shared/questionsbtn.dart';
import 'LoginScreen.dart';
import 'score_screen.dart';

class questionscreen extends StatefulWidget {
  final Color? themeColor;
  final String? testName;
  final List questionsList;

  questionscreen({
    Key? key,
    this.themeColor,
    this.testName,
    required this.questionsList,
  }) : super(key: key);

  @override
  State<questionscreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<questionscreen> {
  int index = 0;
  int score = 0;
  int _remainingTime = 30; // initial time in seconds
  late Timer _timer; // timer to update the remaining time

  @override
  void initState() {
    super.initState();
    // start the timer when the widget is initialized
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          // when time is up, go to the next question
          _goToNextQuestion();
        }
      });
    });
  }

  @override
  void dispose() {
    // stop the timer when the widget is disposed to avoid memory leaks
    _timer.cancel();
    super.dispose();
  }

  void _goToNextQuestion() {
    if (index == widget.questionsList.length - 1) {
      // when we reach the last question, show the score screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScoreScreen(
            index: index,
            score: score,
          ),
        ),
      );
    } else {
      setState(() {
        index++;
        _remainingTime = 30; // reset the time for the next question
      });
    }
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
  }

  Widget _buildTimer() {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.timer,
            color: Colors.white,
            size: 24,
          ),
          const SizedBox(width: 8),
          Text(
            _formatTime(_remainingTime),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: _remainingTime > 10 ? Colors.white : Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Center(child: Text(widget.testName!)),
        title: Column(
          children: [
            Text("Question No:"),
            Text("${index + 1}/${widget.questionsList.length}"),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.school,
              color: Color.fromARGB(255, 187, 175, 195),
            ),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 18, 43, 101),
              Color.fromARGB(255, 30, 71, 117),
              Color.fromARGB(255, 68, 98, 138),
              Color(0xFF398AE5),
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Question:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildTimer(),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                widget.questionsList[index]["question"],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Answers:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0;
                          i <
                              (widget.questionsList[index]["answers"] as List)
                                  .length;
                          i++)
                        GestureDetector(
                          onTap: () {
                            score = score +
                                widget.questionsList[index]["answers"][i]
                                    ["score"] as int;
                            _goToNextQuestion();
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.45,
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 16.0),
                            child: Center(
                              child: Text(
                                widget.questionsList[index]["answers"][i]
                                    ["ans"],
                                style: const TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
