import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:rpg/components/expandable_fab.dart';

class MasterScreen extends StatelessWidget {
  const MasterScreen({Key? key}) : super(key: key);

  void pickScenery () async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.first.path != null) {
      File file = File(
        result.files.first.path!,
      );
      debugPrint(file.path);
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    void _showAction(BuildContext context, int index) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              constraints: const BoxConstraints(maxHeight: 900, maxWidth: 700),
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const AutoSizeText('Escolher cenário', style: TextStyle(fontSize: 30), maxLines: 1),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: pickScenery,
                      style: ElevatedButton.styleFrom(maximumSize: const Size(400, 100)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.image),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text('Escolher imagem'),
                          )
                        ],
                      ),
                    ),
                  ),
                ]
              ),
            ),
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
          Tooltip(
            preferBelow: false,
            margin: const EdgeInsets.only(bottom: 5),
            message: 'Escolher cenário',
            child: ActionButton(
              onPressed: () => _showAction(context, 1),
              icon: const Icon(Icons.insert_photo),
            ),
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