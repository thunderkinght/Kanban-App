import 'package:uuid/uuid.dart';

enum Section { idea, reseach, doing, done }

const uuid = Uuid();

class KanbanModel {
  KanbanModel({
    required this.title,
    required this.description,
    required this.section,
  }) : this.id = uuid.v4();

  final String id;
  final String title;
  final String description;
  late final Section section;
}
