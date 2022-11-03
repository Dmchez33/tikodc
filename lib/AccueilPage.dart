import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:tikodc/Add.dart';
import 'package:tikodc/Now.dart';
import 'package:tikodc/Profil.dart';
import 'package:tikodc/Reception.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

import 'Inscription.dart';
//CLASSE CONTENANT LA LISTE DE VIDEO
class AccueilPage extends StatelessWidget {
  AccueilPage({Key? key}) : super(key: key);
  final List<Map> tiktokItems = [
    {
      "video": "assets/videos/video_1.mp4",
    },
    {
      "video": "assets/videos/video_2.mp4",
    },
    {
      "video": "assets/videos/video_3.mp4",
    },
    {
      "video": "assets/videos/video_4.mp4",
    },
    {
      "video": "assets/videos/video_5.mp4",
    },
    {
      "video": "assets/videos/video_6.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: tiktokItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                color: const Color(0xFF141518),
                child:
                //le widget Stack() nous permet de
                // superposer notre vidéo et les informations
                // de la vidéo.
                Stack(
                  children: [
                    VideoWidget(
                      videoUrl: item['video'],
                    ),
                    const PostContent(),
                  ],
                )
            );
          },
        );
      }).toList(),
    );
  }
}



//Widget Permettant de charger nos videos
class VideoWidget extends StatefulWidget {
  VideoWidget({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;
  @override
  _VideoWidgetState createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  final String videoUrl;
  late VideoPlayerController _controller;

  _VideoWidgetState(this.videoUrl);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        _controller.setLooping(true); // methode permettant de faire la lecture en boucle
        _controller.play(); // methode permettant de lancer la lecture vidéo
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    //Widget fournit par le pakage video_player
    //il prend en parametre un controller
    //Nous fournissont la source de nos videos ce controller
    return VideoPlayer(_controller);
  }
}


//PostContent est un widget contenant toutes les informations de notre post TikTok,
// à commencer par la disposition des différents éléments
class PostContent extends StatelessWidget {
  const PostContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Ce widget Container correpond au menu de nottre app
        Container(
          height: 100,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Image.asset(
                'assets/images/TV.png',
                height: 25,
              ),
              const Text(
                'Suivi',
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //SizedBox(width: 20),
              const Text(
                'Pour moi',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.asset(
                'assets/images/search.png',
                height: 25,
              ),
            ],
          ),
        ),
        Expanded( //le widge Expanded vas nous permet d'elargir
          // l'espace du widget enfant Row ou column conformement
          // a l'axe principal
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      // est une propriéte qui vas nous permet spécifier
                      // la manière dont les widgets enfants seront organisés sur l'axe principal
                      mainAxisAlignment: MainAxisAlignment.end,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '@extremesports_95',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Goein full send in Squaw Valley. #snow @snowboarding # extremesports #sendit #winter',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Original Sound - extremesports_95',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            TextButton(onPressed: (() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Profil() ));
                            }), child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: const CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(
                                  'assets/images/photo-5.jpeg',
                                ),
                              ),
                            ),
                            
                            
                            ),
                            
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        child: Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.white.withOpacity(1),
                              size: 45,
                            ),
                            const Text(
                              '25.0K',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/commet.png',
                              height: 45,
                            ),

                            const Text(
                              '156',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/favorite.png',
                              height: 45,
                            ),
                            const Text(
                              '123',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/share.png',
                              height: 45,
                            ),
                            const Text(
                              '123',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      AnimatedLogo(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}



//AnimatedLogo est un widget qui va nous permet de faire la rotation
//l'icon de tiktok en bas en droite de l'ecran

class AnimatedLogo extends StatefulWidget {
  AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage("media/disc_icon.png"),
          ),
        ),
        child: Image.asset('assets/images/tiktok_icon.png'),
      ),
    );
  }
}