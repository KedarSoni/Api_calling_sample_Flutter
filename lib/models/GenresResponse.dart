class GenresResponse {
  bool? error;
  String? msg;
  List<GenresDetails>? resultAllGenres;

  GenresResponse({this.error, this.msg, this.resultAllGenres});

  GenresResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    msg = json['msg'];
    if (json['result_all_genres'] != null) {
      resultAllGenres = <GenresDetails>[];
      json['result_all_genres'].forEach((v) {
        resultAllGenres!.add(new GenresDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['msg'] = this.msg;
    if (this.resultAllGenres != null) {
      data['result_all_genres'] =
          this.resultAllGenres!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GenresDetails {
  int? id;
  String? name;

  GenresDetails({
    this.id,
    this.name,
  });

  GenresDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
