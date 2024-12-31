import 'package:flutter/material.dart';

typedef OnItemClieded = void Function(Clieditem);

// ignore: must_be_immutable
class MyDrawer extends StatelessWidget {
  OnItemClieded onItemClieded;
  MyDrawer({required this.onItemClieded, super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color: Theme.of(context).primaryColor,
                child: Text(
                  "News App!",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        onItemClieded(Clieditem.categore);
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.list,
                            size: 30,
                          ),
                          Text(
                            'Categories',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        onItemClieded(Clieditem.setting);
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.settings,
                            size: 30,
                          ),
                          Text(
                            'Settings',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

enum Clieditem {
  categore,
  setting,
}
