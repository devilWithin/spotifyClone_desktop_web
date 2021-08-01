import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/widgets/widgets.dart';

class PlayListScreen extends StatefulWidget {
  final Playlist playlist;

  const PlayListScreen({required this.playlist});

  @override
  _PlayListScreenState createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///make the body extend behind the app bar, with background colors of
      ///the appbar set to transparent
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,

        ///appbar has a fixed width so we need tp modify it to show our buttons
        leadingWidth: 140.0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                ///this to make the border around the button when clicked to a circle
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.chevron_left, size: 28.0),
                ),
              ),
              const SizedBox(width: 16.0),
              InkWell(
                ///this to make the border around the button when clicked to a circle
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.chevron_right, size: 28.0),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(
                primary: Theme.of(context).iconTheme.color),
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 30.0,
            ),
            label: Text('Mostafa Medhat'),
          ),
          const SizedBox(width: 8.0),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: (){},
            icon: Icon(Icons.keyboard_arrow_down, size: 30.0,),
          ),
          const SizedBox(width: 20.0),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFFAF1018),
            Theme.of(context).backgroundColor,
          ],
          stops: const [0, 0.3],
        )),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          children: [
            PlaylistHeader(playlist: widget.playlist),
            TracksList(tracks: widget.playlist.songs),
          ],
        ),
      ),
    );
  }
}
