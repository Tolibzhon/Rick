import 'package:flutter/foundation.dart';

class EpisodesModel {
  final Info info;
  final List<EpisodesResult> results;

  EpisodesModel({
    required this.info,
    required this.results,
  });

  factory EpisodesModel.fromJson(Map<String, dynamic> json) => EpisodesModel(
        info: Info.fromJson(json["info"]),
        results: List<EpisodesResult>.from(
            json["results"].map((x) => EpisodesResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "info": info.toJson(),
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };

  EpisodesModel copyWith({
    Info? info,
    List<EpisodesResult>? results,
  }) {
    return EpisodesModel(
      info: info ?? this.info,
      results: results ?? this.results,
    );
  }

  @override
  bool operator ==(covariant EpisodesModel other) {
    if (identical(this, other)) return true;

    return other.info == info && listEquals(other.results, results);
  }

  @override
  int get hashCode => info.hashCode ^ results.hashCode;
}

class Info {
  final int count;
  final int pages;
  final String next;
  final dynamic prev;

  Info({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        count: json["count"],
        pages: json["pages"],
        next: json["next"],
        prev: json["prev"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "pages": pages,
        "next": next,
        "prev": prev,
      };
  @override
  bool operator ==(covariant Info other) {
    if (identical(this, other)) return true;

    return other.count == count &&
        other.pages == pages &&
        other.next == next &&
        other.prev == prev;
  }

  @override
  int get hashCode {
    return count.hashCode ^ pages.hashCode ^ next.hashCode ^ prev.hashCode;
  }
}

class EpisodesResult {
  final int id;
  final String name;
  final String airDate;
  final String episode;
  final List<String> characters;
  final String url;
  final String created;

  EpisodesResult({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });

  factory EpisodesResult.fromJson(Map<String, dynamic> json) => EpisodesResult(
        id: json["id"],
        name: json["name"],
        airDate: json["air_date"],
        episode: json["episode"],
        characters: List<String>.from(json["characters"].map((x) => x)),
        url: json["url"],
        created: json["created"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "air_date": airDate,
        "episode": episode,
        "characters": List<dynamic>.from(characters.map((x) => x)),
        "url": url,
        "created": created,
      };
  @override
  bool operator ==(covariant EpisodesResult other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.airDate == airDate &&
        other.episode == episode &&
        listEquals(other.characters, characters) &&
        other.url == url &&
        other.created == created;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        airDate.hashCode ^
        episode.hashCode ^
        characters.hashCode ^
        url.hashCode ^
        created.hashCode;
  }

  @override
  String toString() {
    return '(name: $name)';
  }
}
