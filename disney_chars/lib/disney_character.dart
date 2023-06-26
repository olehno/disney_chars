import 'package:equatable/equatable.dart';

class DisneyCharacter extends Equatable {
  final int id;
  final String name;
  final String imageUrl;
  final String allMovies;
  final String yearCreatedAt;

  const DisneyCharacter({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.allMovies,
    required this.yearCreatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        allMovies,
        yearCreatedAt,
      ];
}
