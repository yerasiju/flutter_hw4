import 'package:flutter/material.dart';
final List<String> users = ["Tom", "Rob", "Sam", "Mike"];
final List<String> companies =["Google", "Microsoft", "Apple", "JetBrains"];
void main() {
  runApp(MaterialApp(
    home:  Scaffold(
      body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: users.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Text(users[index], style:TextStyle(fontSize: 22)),
                leading: Icon(Icons.face_3),
                trailing: Icon(Icons.phone),
                subtitle: Text("Works in ${companies[index]}")
            );
          }
      ),
      appBar: AppBar(
        title: Text("METANIT.COM"),
        backgroundColor: Colors.blue,
      ),
    ),
  ));
}