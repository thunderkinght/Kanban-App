import 'package:flutter/material.dart';
import 'package:kanban_app/Widgets/card_widget.dart';
import 'package:kanban_app/model/model.dart';

class Section_Widget extends StatefulWidget {
  const Section_Widget({
    super.key,
    required this.list,
    required this.title,
  });

  final title;
  final List<KanbanModel> list;

  @override
  State<Section_Widget> createState() => _Section_WidgetState();
}

class _Section_WidgetState extends State<Section_Widget> {
  void addTask() {}

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
                  widget.title,
                ),
                const Spacer(),
                IconButton(
                  onPressed: addTask,
                  icon: const Icon(Icons.add),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.list.length,
                  itemBuilder: (ctx, index) {
                    return Card_widget(
                      kanbanModel: widget.list[index],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
