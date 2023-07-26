import 'package:flutter/material.dart';
import 'package:kanban_app/model/model.dart';
import 'package:kanban_app/model/data.dart';

class Nav_Bar extends StatelessWidget {
  const Nav_Bar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.add)),  //TODO: Add other Kanban plan
                const Spacer(),
                IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.cancel))
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: doing.length,
                  itemBuilder: (ctx,index){
                    return ListTile(
                      leading: const Icon(Icons.local_post_office),
                      title: Text(doing[index].title),
                      onTap: (){},  //TODO: changing to the other kanban plan
                      selected: true,  //TODO: changing with the variable
                    );
                  }
              ),
          ),
        ],
      ),
    );
  }
}