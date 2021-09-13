import 'dart:async';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:flutter/material.dart';
import 'package:moneybook/task_page.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlay> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
      'assets/videos/vid.mp4',
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: false),
    );
    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(false);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  CountdownController _Tcontroller = CountdownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Start your video within 15 secconds",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 50,
          ),
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // Start
                    ],
                  ),
                ),
                Countdown(
                  // controller: _controller,
                  seconds: 20,
                  build: (_, double time) => Text(
                    time.toString(),
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  interval: Duration(milliseconds: 100),
                  onFinished: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => TaskPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _Tcontroller.restart();
            // pause
            if (_controller.value.isPlaying) {
            } else {
              // play
              _controller.play();
            }
          });
        },
        // icon
        child: Icon(
          _controller.value.isPlaying ? Icons.exit_to_app : Icons.play_arrow,
        ),
      ),
    );
  }
}
