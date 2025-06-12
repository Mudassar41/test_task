import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task_movies_app/src/presentation/providers/media_provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerPlayerPage extends StatefulWidget {
  final int movieId;

  const TrailerPlayerPage({super.key, required this.movieId});

  @override
  State<TrailerPlayerPage> createState() => _TrailerPlayerPageState();
}

class _TrailerPlayerPageState extends State<TrailerPlayerPage> {
  YoutubePlayerController? _youtubeController;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<MediaProvider>(context, listen: false)
          .fetchTrailerUrl(widget.movieId);
    });
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    _youtubeController?.dispose();
    super.dispose();
  }

  void _initializePlayer(String url) {
    final videoId = YoutubePlayer.convertUrlToId(url);
    if (videoId != null) {
      _youtubeController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          disableDragSeek: false,
          loop: false,
        ),
      );

      setState(() {});
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid YouTube URL')),
        );
      });
      Navigator.pop(context);
    }
  }

  void _exitPlayer() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MediaProvider>(
      builder: (context, media, child) {

        if (media.isLoading) {
          return const Scaffold(
            backgroundColor: Colors.black,
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (_youtubeController == null && media.trailerUrl != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _initializePlayer(media.trailerUrl!);
          });
        }

        return Scaffold(
          backgroundColor: Colors.black,
          body: _youtubeController == null
              ? const Center(child: CircularProgressIndicator())
              : Stack(
            children: [
              YoutubePlayer(
                controller: _youtubeController!,
                showVideoProgressIndicator: true,
                onEnded: (metaData) => _exitPlayer(),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: _exitPlayer,
                ),
              ),
            ],
          ),
        );
      },
    );
  }


}