import 'package:flutter/material.dart';
import 'package:rinf_minesweeper/messages/test_message.pbserver.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  static const String routeName = "home";

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minesweeper"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Test rinf signal"),
              TextField(
                controller: controller,
              ),
              ElevatedButton(
                child: const Text("Send"),
                onPressed: () {
                  TestMessage(
                    msg: controller.text,
                  ).sendSignalToRust(null);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
