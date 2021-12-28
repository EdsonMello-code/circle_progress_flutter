import 'package:flutter/material.dart';
import 'package:progress_circle/views/widgets/circle_progress.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircleProgress(
            percent: 50,
          ),
        ),
      ),
    );
  }
}
