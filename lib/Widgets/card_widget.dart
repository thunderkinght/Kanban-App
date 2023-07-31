import 'package:flutter/material.dart';
import 'package:kanban_app/model/model.dart';

class Card_widget extends StatelessWidget {
  Card_widget({
    super.key,
    required this.kanbanModel,
  });

  final KanbanModel kanbanModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title: ${kanbanModel.title}",
              ),
              const SizedBox(height: 5),
              Text(
                "Description: ${kanbanModel.description}",
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                  //TODO: Delete a List
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.assignment_turned_in_outlined))
                  //TODO: Add to other list
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
