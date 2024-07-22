class ContactModel {
  final String? id;
  final String name;
  final String email;

  ContactModel({
    this.id,
    required this.name,
    required this.email,
  });

  factory ContactModel.fromJson(dynamic json) {
    return ContactModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
    );
  }
}
