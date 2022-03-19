import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/screens/newtask_screen.dart';
import 'package:todo_list/widgets/TodoItems.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.green,
        toolbarHeight: 80,
      ),

      drawer: Drawer(child: ListView(
      children: [
        DrawerHeader(decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.green),
            child: Text("Schedules",style: TextStyle(color: Colors.white, fontSize: 30),)
        ),
        ListTile(title: TextButton(onPressed: () {}, child: Text("Today",style: TextStyle(fontSize: 18,color: Colors.green,),),)),
        ListTile(title: TextButton(onPressed: () {}, child: Text("Tomorrow",style: TextStyle(fontSize: 18,color: Colors.green),),)),
        ListTile(title: TextButton(onPressed: () {}, child: Text("Weekly",style: TextStyle(fontSize: 18,color: Colors.green),),)),
        ListTile(title: TextButton(onPressed: () {}, child: Text("Monthly",style: TextStyle(fontSize: 18,color: Colors.green),),)),
      ],  
      ),
      ),

       body:
      Column(
        children: [
          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 20),
                child: Container(
                  height: 50,width: 280,
                  child: TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddTask()));
                  },
                    child: Text("Add New Task",style: TextStyle(color: Colors.white,backgroundColor: Colors.green,fontSize: 20),),
                    style: TextButton.styleFrom(primary:Colors.white,backgroundColor: Colors.green,shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(30.0))),
                  ),
                ),
              ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextButton(onPressed:() {}, child: Icon(Icons.assignment_turned_in_rounded,size: 40,color: Colors.green,)),
                ),
            ],
          ),

          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder:  (context, index){
                return TodoItem();
              },

            ),
          ),

        ],
      ),

    );
  }
}
