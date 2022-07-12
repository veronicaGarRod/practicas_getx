import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicas_getx/01-Contador/contador_controller.dart';

class ContadorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorController>( init: ContadorController(), builder: (_){
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
                  GetBuilder<ContadorController>(
                    id:"increment",
                    builder: (_) {
                      return  Text(
                        '${_.contador}',
                        style: TextStyle(fontSize: 16.0),
                      );
                    }
                  ),
                    Text(
                    'decremento:',
                     style: Theme.of(context).textTheme.headline4,
                  ),
                  GetBuilder<ContadorController>(
                    id:'decrement',
                    builder: (_) {
                      return  Text(
                       '${_.contador2}',
                        style: TextStyle(fontSize: 16.0),
                      );
                    }
                  )
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: _.incremento,
                  tooltip: 'Incremento',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: _.decremento,
                  tooltip: 'Decremento',
                  child: const Icon(Icons.minimize_sharp),
                )
              ],
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
    } );
  }
}

  
