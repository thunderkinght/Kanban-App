import 'package:flutter/material.dart';
import 'package:kanban_app/Widgets/section_widget.dart';
import 'package:kanban_app/model/data.dart';
import 'package:kanban_app/Widgets/nav_widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Nav_Bar(),
      appBar: AppBar(
        title: const Text("Flutter Kanban App"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Section_Widget(
              title: "Idea",
              list: idea,
            ),
            Section_Widget(
              title: "Research",
              list: resarch,
            ),
            Section_Widget(
              title: "Doing",
              list: doing,
            ),
            Section_Widget(
              title: "Done",
              list: done,
            ),
          ],
        ),
      ),
    );
  }
}


