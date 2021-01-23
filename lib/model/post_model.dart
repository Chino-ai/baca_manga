import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  final String judul;
  final String image;
  final String suka;
  final String lihat;

  final String genre;
  final String thubmnail;

  PostModel({
    this.judul,
    this.image,
    this.suka,
    this.lihat,
    this.genre,
    this.thubmnail,

  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      judul: json['judul'],
      image: json['image'],
      suka: json['suka'],
      lihat: json['lihat'],
      genre: json['genre'],
        thubmnail: json['thubmnail']

    );
  }

  Map<String, dynamic> toJson() => {
    'judul': judul,
    'image': image,
    'suka': suka,
    'lihat': lihat,
    'genre': genre,
    'thubmnail' : thubmnail

  };

  factory PostModel.fromFireStore(DocumentSnapshot doc) {
    return PostModel(
      judul: doc['judul'],
      image: doc['image'],
      suka: doc['suka'],
      lihat: doc['lihat'],
      genre: doc['genre'],
      thubmnail:doc['thubmnail'],
    );
  }
}