import 'package:flutter/material.dart';
import '../models/song.dart';

class LyricsScreen extends StatelessWidget {
  final Song song;

  const LyricsScreen({Key? key, required this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(song.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Song Info
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Judul Lagu',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    song.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Artis',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    song.artist,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Lyrics Title
            Text(
              'Lirik Lagu',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),

            // Lyrics Content
            Text(
              song.lyrics,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    height: 1.8,
                  ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
