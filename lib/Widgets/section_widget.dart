import 'package:flutter/material.dart';
import 'package:kanban_app/Screen/new_plan.dart';
import 'package:kanban_app/Widgets/card_widget.dart';
import 'package:kanban_app/model/model.dart';

class Section_Widget extends StatelessWidget {
  const Section_Widget({
    super.key,
    required this.list,
    required this.title,
    required this.onAdd,
  });

  final String title;
  final List<KanbanModel> list;
  final void Function() onAdd;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onAdd,
                  icon: const Icon(Icons.add),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (ctx, index) {
                    return Card_widget(
                      kanbanModel: list[index],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
