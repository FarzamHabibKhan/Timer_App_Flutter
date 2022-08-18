import 'dart:async';
import 'package:flutter/material.dart';
import 'contants.dart';
import 'text_button_style.dart';

class CountdownTimer extends StatefulWidget {
  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  int _seconds = kMaxTimer;
  String buttonLabel = 'Start';
  double value = 0;

  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _seconds > 0
          ? setState(() {
              _seconds--;
              value += (1 / kMaxTimer);
            })
          : timer.cancel();
    });
    setState(() {
      buttonLabel = 'Pause';
    });
  }

  void pauseTimer() {
    timer?.cancel();
    setState(() {
      buttonLabel = 'Resume';
    });
  }

  void stopTimer() {
    timer?.cancel();
    setState(() {
      _seconds = kMaxTimer;
      value = 0;
      buttonLabel = 'Start';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBgColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Timer',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Container(
              decoration: kShadowStyle(BoxShape.circle),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    backgroundColor: kBgColor,
                    radius: 150,
                    child: Container(
                      width: kProgressBarStrokeSize,
                      height: kProgressBarStrokeSize,
                      child: CircularProgressIndicator(
                        value: value,
                        backgroundColor: Color(0xff454545),
                        strokeWidth: 10,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.redAccent),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Text(
                      '$_seconds',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButtonStyle(
                  onPressed: () {
                    buttonLabel != 'Pause' ? startTimer() : pauseTimer();
                  },
                  label: buttonLabel,
                ),
                TextButtonStyle(
                  onPressed: () => stopTimer(),
                  label: 'Stop',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
