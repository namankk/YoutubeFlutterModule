import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeScreen extends StatefulWidget {
  const YoutubeScreen({Key? key}) : super(key: key);

  @override
  _YoutubeScreenState createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  YoutubePlayerController? _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 50.0
        ),
        child: YoutubePlayer(
          controller: _controller!,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }

  @override
  void initState() {
     _controller = YoutubePlayerController(
      initialVideoId: 'iLnmTe5Q2Qw',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
    super.initState();
  }
}
