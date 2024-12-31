import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Language :",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showFunBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2)),
              child: const Text("English"),
            ),
          ),
        ],
      ),
    );
  }

  void showFunBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text("English", style: TextStyle(fontSize: 20))),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "العربية",
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        );
      },
    );
  }
}
