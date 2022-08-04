import 'package:module_commons/models/enum/process_status.dart';

class User {
  final int id;
  final String name;
  final String mail;
  final String phone;
  final List<String> profiles;
  final List<ProcessStatus> exhibitionStatus;
  final List<ProcessStatus> actionStatus;

  User({
    required this.id,
    required this.name,
    required this.mail,
    required this.phone,
    required this.profiles,
    required this.exhibitionStatus,
    required this.actionStatus,
  });
}
