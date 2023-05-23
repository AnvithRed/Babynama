import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoCard extends StatelessWidget {
  final String videoId;
  final String title;
  final String description;

  const VideoCard({
    Key? key,
    required this.videoId,
    required this.title,
    required this.description,
  }) : super(key: key);

 @override
Widget build(BuildContext context) {
  final YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: videoId,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  return  SizedBox(

   
 
    child: Card(
  
      color: Colors.blue,
      child: Container(
        
        padding: EdgeInsets.all(16),
        child:SingleChildScrollView(
        child: Column(
        
        
        children: [
          
            Container(
              height: 400,
          child:AspectRatio(
            
            aspectRatio: 10/16,
            child: YoutubePlayer(
              controller: controller,
              liveUIColor: Colors.amber, // Customize the color of the live playback progress
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style:  TextStyle(fontSize: 20,color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
          ),
        ],
      ),
    )),
  ));
}
}