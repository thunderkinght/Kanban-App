import 'package:flutter/material.dart';

class New_Plan extends StatefulWidget {
  const New_Plan({Key? key}) : super(key: key);

  @override
  State<New_Plan> createState() => _New_PlanState();
}

class _New_PlanState extends State<New_Plan> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Enter the title"),
                  ),
                  controller: _titleController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Enter the Description"),
                  ),
                  controller: _descriptionController,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(onPressed: () {}, child: const Text("Cancel")),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
              )
            ],
          )
        ],
      ),
    );
  }
}
