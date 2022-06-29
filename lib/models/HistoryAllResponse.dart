class HistoryAllResponse {
  bool? error;
  String? msg;
  List<HistoryAllDetails>? resultAllHistory;

  HistoryAllResponse({this.error, this.msg, this.resultAllHistory});

  HistoryAllResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    msg = json['msg'];
    if (json['result_all_history'] != null) {
      resultAllHistory = <HistoryAllDetails>[];
      json['result_all_history'].forEach((v) {
        resultAllHistory!.add(new HistoryAllDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['msg'] = this.msg;
    if (this.resultAllHistory != null) {
      data['result_all_history'] =
          this.resultAllHistory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HistoryAllDetails {
  String? referenceId;
  String? referenceType;

  HistoryAllDetails({
    this.referenceId,
    this.referenceType,
  });

  HistoryAllDetails.fromJson(Map<String, dynamic> json) {
    referenceId = json['category_id'];
    referenceType = json['reference_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['category_id'] = this.referenceId;
    data['reference_type'] = this.referenceType;

    return data;
  }
}
