class AlertResponse {
  final String? title;
  final int? id;
  final String? subtitle;
  final bool status;
  final dynamic state;

  AlertResponse({
    this.title,
    this.id,
    this.subtitle,
    this.state,
    required this.status,
  });
}
