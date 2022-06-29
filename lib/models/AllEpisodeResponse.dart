class AllEpisodeResponse {
  bool? error;
  String? msg;
  List<AllEpisodeDetails>? resultAllEpisode;

  AllEpisodeResponse({this.error, this.msg, this.resultAllEpisode});

  AllEpisodeResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    msg = json['msg'];
    if (json['result_all_episode'] != null) {
      resultAllEpisode = <AllEpisodeDetails>[];
      json['result_all_episode'].forEach((v) {
        resultAllEpisode!.add(new AllEpisodeDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['msg'] = this.msg;
    if (this.resultAllEpisode != null) {
      data['result_all_episode'] =
          this.resultAllEpisode!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllEpisodeDetails {
  String? podcastId;
  String? title;

  AllEpisodeDetails({
    this.podcastId,
    this.title,
  });

  AllEpisodeDetails.fromJson(Map<String, dynamic> json) {
    podcastId = json['podcast_id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['podcast_id'] = this.podcastId;
    data['title'] = this.title;

    return data;
  }
}
