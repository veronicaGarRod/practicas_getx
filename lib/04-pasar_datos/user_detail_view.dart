import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:practicas_getx/04-pasar_datos/user_detail_controller.dart';

class UserDetailView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserDetailController>(
      init: UserDetailController(),
      builder:(_){
      return     Scaffold(
             appBar: AppBar(title:Text("Detalle Usuarios")),
              body:SizedBox(
              width: double.infinity,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.purple,
                    child: Image.network(_.users.avatar),
                  )
                ],
              ) ,
            )
    );}
    );
   
    }
  
  }



