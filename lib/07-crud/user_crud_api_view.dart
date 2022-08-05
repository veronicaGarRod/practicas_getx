import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicas_getx/07-crud/user_crud_api_controller.dart';


class UserCrudApiView extends StatelessWidget {
  const UserCrudApiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserCrudApiController>(init:UserCrudApiController(),
      builder: (_){
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("User Api Reactivo"),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Obx(() => 
                  Text(_.counter.toString(), style: TextStyle(fontWeight: FontWeight.bold))
                )
              ),
              SizedBox(width: 10.0,)
            ],
          ),
          body: Obx(() {
            return ListView.builder(
              itemCount: _.users.length,
              itemBuilder: ( context,  index) 
              {
               return Card(
                 child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Image.network(_.users[index].avatar),
                  ),
                  title:Text(_.users[index].firstName + " " + _.users[index].lastName) ,
                  trailing: GestureDetector(
                          onTap: (){
                            _.onDeleteU(index);
                          },
                          child:  
                          const CircleAvatar
                          (
                            backgroundColor: Colors.transparent,
                            child:Icon(Icons.delete,)
                          )
                    ),
                  ),
                 );
                }
               );
              }
          )
          );
    },

    );
  }
}