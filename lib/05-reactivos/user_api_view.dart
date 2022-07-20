import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicas_getx/05-reactivos/user_api_controller.dart';

class UserApiView extends StatelessWidget {
  const UserApiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserApiController>(init:UserApiController(),
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
                            _.onFavorite(index);
                          },
                          child:  
                          CircleAvatar
                          (
                            backgroundColor: Colors.transparent,
                            child:Obx(() => 
                               _.users[index].isfavorite.value 
                            ? const Icon(Icons.favorite, color: Colors.pink,)
                            : const Icon(Icons.favorite_border,), 
                            )
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