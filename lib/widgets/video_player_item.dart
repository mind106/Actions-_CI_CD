// ignore_for_file: deprecated_member_use, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerItem({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((value) {
        videoPlayerController.play();
        videoPlayerController.setVolume(1);
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
  }

  @override
  // Widget build(BuildContext context) {
  //   final size = MediaQuery.of(context).size;

  //   return Container(
  //     width: size.width,
  //     height: size.height,
  //     decoration: const BoxDecoration(
  //       color: Colors.black,
  //     ),
  //     child: Center(
  //       child: VideoPlayer(videoPlayerController),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: AspectRatio(
            aspectRatio: videoPlayerController.value.aspectRatio,
            child: VideoPlayer(videoPlayerController),
          ),
        ),
        // floatingActionButton: Padding(
        //   padding: const EdgeInsets.only(
        //     right: 160,
        //     bottom: 200,
        //   ),
        //   child: FloatingActionButton(
        //     onPressed: () {
        //       setState(() {
        //         videoPlayerController.value.isPlaying
        //             ? videoPlayerController.pause()
        //             : videoPlayerController.play();
        //       });
        //     },
        //     child: Icon(
        //       videoPlayerController.value.isPlaying
        //           ? Icons.pause
        //           : Icons.play_arrow,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
