
class UpdateModel {
  ApplicationConfig? android;
  ApplicationConfig? ios;

  UpdateModel({this.android, this.ios});

  UpdateModel.fromJson(Map<String, dynamic> json) {
    android =
    json['android'] != null ? new ApplicationConfig.fromJson(json['android']) : null;
    ios = json['ios'] != null ? new ApplicationConfig.fromJson(json['ios']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.android != null) {
      data['android'] = this.android!.toJson();
    }
    if (this.ios != null) {
      data['ios'] = this.ios!.toJson();
    }
    return data;
  }
}

class ApplicationConfig {
  String? current;
  String? currentApproval;
  String? appUrl;
  bool? isAnouncementEnabled;
  String? anouncementMessage;
  List<PrevVersions>? prevVersions;

  ApplicationConfig(
      {this.current,
        this.currentApproval,
        this.appUrl,
        this.isAnouncementEnabled,
        this.anouncementMessage,
        this.prevVersions});

  ApplicationConfig.fromJson(Map<String, dynamic> json) {
    current = json['current'];
    currentApproval = json['current_approval'];
    appUrl = json['app_url'];
    isAnouncementEnabled = json['is_anouncement_enabled'];
    anouncementMessage = json['anouncement_message'];
    if (json['prev_versions'] != null) {
      prevVersions = <PrevVersions>[];
      json['prev_versions'].forEach((v) {
        prevVersions!.add(PrevVersions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current'] = this.current;
    data['current_approval'] = this.currentApproval;
    data['app_url'] = this.appUrl;
    data['is_anouncement_enabled'] = this.isAnouncementEnabled;
    data['anouncement_message'] = this.anouncementMessage;
    if (this.prevVersions != null) {
      data['prev_versions'] =
          this.prevVersions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PrevVersions {
  String? version;
  bool? forceUpdate;
  String? reason;

  PrevVersions({this.version, this.forceUpdate, this.reason});

  PrevVersions.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    forceUpdate = json['force_update'];
    reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['force_update'] = this.forceUpdate;
    data['reason'] = this.reason;
    return data;
  }
}