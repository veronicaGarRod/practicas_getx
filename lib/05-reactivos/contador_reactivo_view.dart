import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'contador_reactivo_controller.dart';


class ContadorReactivoView extends StatelessWidget {
  const ContadorReactivoView({Key? key}) : super(key: key);
 @override

Widget build(BuildContext context) {
    return GetBuilder<ContadorReactivoController>(init:ContadorReactivoController(),
      builder: (_){
        return Scaffold(
            appBar: AppBar(
              title: Text("Contador"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'incremento:',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                    Obx((){
                      return Text(
                          _.counter.toString(),
                          style: TextStyle(fontSize: 16.0),
                        );
                    }
                    ),
                   Text(
                    'decremento:',
                     style: Theme.of(context).textTheme.headline4,
                  ),
                   Obx((){
                    return Text(
                       _.counter2.toString(),
                        style: TextStyle(fontSize: 16.0),
                      );
                   }

                   )
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                FloatingActionButton(
                  onPressed: _.increment,
                  tooltip: 'Incremento',
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed:_.decrement,
                  tooltip: 'Decremento',
                  child: Icon(Icons.minimize_sharp),
                )
              ],
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
      },
    );
  }
}