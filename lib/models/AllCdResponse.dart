class AllCdResponse {
  bool? error;
  String? msg;
  List<AllCdDetails>? resultAllCd;

  AllCdResponse({this.error, this.msg, this.resultAllCd});

  AllCdResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    msg = json['msg'];
    if (json['result_all_cd'] != null) {
      resultAllCd = <AllCdDetails>[];
      json['result_all_cd'].forEach((v) {
        resultAllCd!.add(new AllCdDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['msg'] = this.msg;
    if (this.resultAllCd != null) {
      data['result_all_cd'] = this.resultAllCd!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllCdDetails {
  String? name;
  String? createdAt;

  AllCdDetails({
    this.name,
    this.createdAt,
  });

  AllCdDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['created_at'] = this.createdAt;

    return data;
  }
}
