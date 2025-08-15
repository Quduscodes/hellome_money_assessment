class SendMoneyOption {
  final String icon;
  final String title;
  final String subtitle;
  final String description;
  final String? route;

  SendMoneyOption({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.description,
    this.route,
  });
}
