class AllBlogsResponse {
  bool? error;
  String? msg;
  List<AllBlogsDetails>? resultAllBlogs;

  AllBlogsResponse({this.error, this.msg, this.resultAllBlogs});

  AllBlogsResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    msg = json['msg'];
    if (json['result_all_blogs'] != null) {
      resultAllBlogs = <AllBlogsDetails>[];
      json['result_all_blogs'].forEach((v) {
        resultAllBlogs!.add(new AllBlogsDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['msg'] = this.msg;
    if (this.resultAllBlogs != null) {
      data['result_all_blogs'] =
          this.resultAllBlogs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllBlogsDetails {
  int? id;
  String? title;

  AllBlogsDetails({
    this.id,
    this.title,
  });

  AllBlogsDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;

    return data;
  }
}
