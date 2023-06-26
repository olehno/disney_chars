import 'package:disney_chars/disney_character.dart';
import 'package:disney_chars/disney_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisneyDetailsPage extends StatefulWidget {
  const DisneyDetailsPage({super.key, required this.id});

  final int id;

  @override
  State<DisneyDetailsPage> createState() => _DisneyDetailsPageState();
}

class _DisneyDetailsPageState extends State<DisneyDetailsPage> {
  late final DisneyRepository _disneyRepository;
  Future<DisneyCharacter>? _disneyFuture;

  @override
  void initState() {
    super.initState();
    _disneyRepository = context.read();
    _disneyFuture = _disneyRepository.getOneCharacterInfo(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DisneyCharacter>(
      future: _disneyFuture,
      builder: (context, snapShot) {
        final connectionState = snapShot.connectionState;
        if (connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final data = snapShot.data;
        if (data != null) {
          return Scaffold(
            body: Column(
              children: [
                Image.network(data.imageUrl),
                Text(data.name),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                _disneyRepository.addCharToFavorite(data);
              },
              child: const Icon(Icons.favorite),
            ),
          );
        } else {
          return const Center(
            child: Text("No data"),
          );
        }
      },
    );
  }
}
