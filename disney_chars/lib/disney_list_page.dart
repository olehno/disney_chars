import 'package:disney_chars/disney_character.dart';
import 'package:disney_chars/disney_details_page.dart';
import 'package:disney_chars/disney_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisneyListPage extends StatefulWidget {
  const DisneyListPage({super.key});

  @override
  State<DisneyListPage> createState() => _DisneyListPageState();
}

class _DisneyListPageState extends State<DisneyListPage> {
  late final DisneyRepository _disneyRepository;
  Future<List<DisneyCharacter>>? _disneyFuture;

  @override
  void initState() {
    super.initState();
    _disneyRepository = context.read();
    _disneyFuture = _disneyRepository.getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<DisneyCharacter>>(
        future: _disneyFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.data ?? [];
          return ListView.builder(
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          DisneyDetailsPage(id: data[index].id),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Image.network(data[index].imageUrl),
                    Text(data[index].name),
                  ],
                ),
              );
            },
            itemCount: data.length,
          );
        },
      ),
    );
  }
}
