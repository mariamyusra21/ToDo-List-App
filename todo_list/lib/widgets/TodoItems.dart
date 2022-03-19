import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text("Go to Gym"),
        value: this.selected,
        onChanged: (val){ this.selected = !this.selected; },
        checkColor: Colors.white,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
