
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_project/artist_details_page.dart';
import 'package:photo_project/models.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final Artist andy = Artist(
    firstName: 'Taylor ',
    lastName: 'Swift',
    avatar: 'assets/avatar.jpg',
    backdropPhoto: 'assets/backdrop.jpg',
    location: 'Pensilvânia,  Reading',
    biography: 'O primeiro single de Taylor Swift, "Tim McGraw", foi lançado no verão de 2006 e seu álbum de estreia (Taylor Swift) foi lançado no dia 19 de junho de 2006. Swift escreveu e coescreveu todas as canções de seu álbum, que estreou na parada Billboard 200 na posição 19 e vendeu mais de 67 mil cópias na primeira semana.[42] Em seguida, chegou à primeira posição da parada Billboard Top Country Albums e em quinto lugar na Billboard 200. Mesmo assim, o álbum ocupou a primeira posição das paradas de country durante oito semanas consecutivas. ',
    videos: <Video>[
      Video(
        title: 'Taylor Swift - Live at the 2019 American Music Awards',
        thumbnail: '',
        url: '',
      ),
      Video(
        title: 'Taylor Swift - Live at the 2019 American Music Awards',
        thumbnail: 'assets/video2_thumb.png',
        url: '',
      ),
      Video(
        title: 'Taylor Swift - Live at the 2019 American Music Awards',
        thumbnail: 'assets/video3_thumb.png',
        url: '',
      ),
      Video(
        title: 'Taylor Swift - Live at the 2019 American Music Awards',
        thumbnail: 'assets/video4_thumb.png',
        url: '',
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArtistDetailsPage(andy),
    );
  }
}
