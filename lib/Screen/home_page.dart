import 'package:flutter/material.dart';
import 'package:kanban_app/Widgets/section_widget.dart';
import 'package:kanban_app/model/data.dart';
import 'package:kanban_app/Widgets/nav_widgets.dart';
import 'package:kanban_app/Screen/new_plan.dart';
import 'package:kanban_app/model/model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List title = ['Idea', "Research", "Doing", "Done"];
  static List<Section> section = [
    Section.idea,
    Section.reseach,
    Section.doing,
    Section.done
  ];

  void _addTask() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const New_Plan(),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Nav_Bar(),
      appBar: AppBar(
        title: const Text("Flutter Kanban App"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_circle),
            label: 'Idea',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories_rounded),
            label: 'Research',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_history_rounded),
            label: 'Doing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_rounded),
            label: 'Done',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: Section_Widget(
          title: title[_selectedIndex],
          list: arr
              .where((element) => element.section == section[_selectedIndex])
              .toList(),
          onAdd: _addTask,
        ),
      ),
    );
  }
}
