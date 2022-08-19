import 'package:flutter/material.dart';
import 'package:rpg/components/expandable_fab.dart';

class MasterScreen extends StatelessWidget {
  const MasterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showAction(BuildContext context, int index) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('teste modal'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('CLOSE'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      body: Container(),
      floatingActionButton: ExpandableFab(
        distance: 150.0,
        children: [
          ActionButton(
            onPressed: () => _showAction(context, 0),
            icon: const Icon(Icons.format_size),
          ),
          ActionButton(
            onPressed: () => _showAction(context, 1),
            icon: const Icon(Icons.insert_photo),
          ),
          ActionButton(
            onPressed: () => _showAction(context, 2),
            icon: const Icon(Icons.videocam),
          ),
        ],
      ),
    );
  }
}