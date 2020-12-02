import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}


class _VideoAppState extends State<VideoApp> {
  /// [--- define ---]
  VideoPlayerController _controller;

  /// [--- initState() && dispose()---]
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
      ..initialize()
        .then((_) {
          setState(() {});
        });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// [--- build() ---]
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.initialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }


}