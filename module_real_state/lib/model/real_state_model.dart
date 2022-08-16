import 'attendants_model.dart';

class RealState {
  final String? image;
  final String name;
  final String cnpj;
  final String phone;
  final String mail;
  final String domain;
  final List<Attendants> attendants;

  RealState(
      {this.image,
      required this.name,
      required this.cnpj,
      required this.phone,
      required this.mail,
      required this.domain,
      required this.attendants});
}
