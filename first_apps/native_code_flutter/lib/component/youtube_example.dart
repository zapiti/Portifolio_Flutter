import 'package:flutter/cupertino.dart';
import 'package:youtube_player/youtube_player.dart';

class YoutubeView{
 static Widget getYoutube() {
    return YoutubePlayer(
      source: "nPt8bK2gbaU",
      quality: YoutubeQuality.HD,
      aspectRatio: 16/9,
      showThumbnail: true,
    );
  }
}