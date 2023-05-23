import 'package:babynama/widgets/video.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VideoCarousel extends StatelessWidget {
  final List<String> videoIds = [
    'https://www.youtube.com/shorts/JVx2HMvNk54?feature=share',
    'https://www.youtube.com/shorts/b6oAvadGapY?feature=share',
    'https://youtu.be/DLgyEtzOGYo',
    'https://youtu.be/bZ1fEyUYaRs',
    'https://youtu.be/SOwQJqdcgAo','https://youtu.be/tnP6WJNEN24'
  ];

  final List<String> titles = [
    'As a first time mother I am always anxious ,but doctor is always there. Must have for all first time moms. ',
    "It is a life changer .You can't go to offline doctor all the time, doctor here are very polite and very efficient.",
    'My baby had breathing issues ,doctor here identified it and help me come down a lot. I get reply on my WhatsApp very helpful',
    "The doctors are easily available in a matter of minutes...... it is really worth taking the plan.",
    "Dr Sumitra and babynama have helped me in so many ways..... suggest this for all mothers.",
    "Please follow the group and take your experience. thank you babynama family",
  ];

  final List<String> descriptions = [
    'Pranati ,mother of 3 month old baby',
    'Shipra ,mother of 3 month old baby',
    'Aabha ,mother of 4 month old baby',
    "Charu Chandarana ,mother of 7 month old baby",
    "Ruch Garg ,mother of 7 month old twins",
    "Mr. and Mrs. Sharma ,mother of 4 month old baby",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: videoIds.map((videoId) {
        return Scaffold(
          body: SizedBox(
            

            child:Container(
              height: 650,
              color:  Color.fromARGB(255, 239, 246, 255),
    width: 350,
          child: VideoCard(
          
            videoId: videoId,
            title: titles[videoIds.indexOf(videoId)],
            description: descriptions[videoIds.indexOf(videoId)],
          ),
        )));
      }).toList(),
      options: CarouselOptions(
        autoPlay: false,
        aspectRatio: 8 / 12,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
