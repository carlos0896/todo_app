import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/home_button_text.dart';

class HomeBottomAppbar extends StatelessWidget {
  const HomeBottomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.deepPurple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HomeButtonText(
            title: 'Por Hacer',
            onTap: () {
              log('Tap en por hacer');
            },
          ),
          HomeButtonText(
            title: 'Haciendo',
            onTap: () {
              log('Tap en haciendo');
            },
          ),
          HomeButtonText(
            title: 'Hechas',
            onTap: () {
              log('Tap en hechas');
            },
          ),
          HomeButtonText(
            title: 'En Revisión',
            onTap: () {
              log('Tap en En Revisión');
            },
          ),
        ],
      ),
    );
  }
}
