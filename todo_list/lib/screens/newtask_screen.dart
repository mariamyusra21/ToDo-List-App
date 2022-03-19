import 'package:flutter/material.dart';
import 'package:todo_list/widgets/TodoItems.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Task",style: TextStyle(color: Colors.white ,fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0,bottom: 50.0),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Add New Task"),),
          ),

         // Padding(padding: EdgeInsets.only(left: 10)),

          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green,shadowColor: Colors.green,textStyle: TextStyle(fontSize: 13)),
              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
                // { return TodoItem(); } ) );
              }, child: Text("Add Task",)
          ),

         // Padding(padding: EdgeInsets.only(left: 10)),

          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green,shadowColor: Colors.green,textStyle: TextStyle(fontSize: 13)),
              onPressed: (){},
              child: Text("Completed",)
          ),

        ],
      ),
    );
  }
}
