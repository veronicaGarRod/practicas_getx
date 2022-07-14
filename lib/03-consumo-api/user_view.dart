import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicas_getx/03-consumo-api/user_controller.dart';
import 'package:practicas_getx/04-pasar_datos/user_detail_view.dart';

class UserView extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
    init: UserController(),
    builder: (_){
      return Scaffold(
        appBar: AppBar(title:Text("Usuarios")),
        body: Container(
            child: GetBuilder<UserController> (
              builder:(_) {
              return ListView.builder(
              itemCount: _.users.length,
              itemBuilder: ( context,  index) {
              final user = _.users[index];
               return Card(
                 child: ListTile(
                  onTap: (){
                   Get.to(()=>UserDetailView(),arguments:user );
                  },
                   leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Image.network(_.users[index].avatar),
                  ),
                  title:Text(_.users[index].firstName + " " + _.users[index].lastName) ,
                 ),
               );
              }
            );
          }
          )
        )

      );
    }
    );
  }
}