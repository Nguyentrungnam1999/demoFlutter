import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends GetxController {
  RxInt count = 0.obs;
  void add() {
    count++;
  }
}

class HomeCounter extends StatelessWidget {
  const HomeCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Counter counter = Get.put(Counter());
    return Scaffold(
      appBar: AppBar(
        title: const Text('demo counter'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Obx(() => Text(
                '${counter.count}',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              )),
        ),
        ElevatedButton(
            onPressed: () {
              Get.to(OtherScreen());
            },
            child: Text('go to OtherScreen')),
        ElevatedButton(
            onPressed: () {
              Get.snackbar(
                'Hi', 'i am a modern snackbar',
                icon: Icon(Icons.alarm),
                shouldIconPulse: true,
                barBlur: 20,
                backgroundColor: Color.fromARGB(255, 142, 238, 142),
                // isDismissible: true,
              );
            },
            child: Text('Show Snack'))
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counter.add();
        },
      ),
    );
  }
}

class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Counter counter = Get.put(Counter());
    final Counter counter = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Orther Screen'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${counter.count}',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => counter.add()),
        child: Icon(Icons.add),
      ),
    );
  }
}
