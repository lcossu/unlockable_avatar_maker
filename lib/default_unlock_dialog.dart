import 'package:flutter/material.dart';

class DefaultUnlockDialog extends StatelessWidget {
  const DefaultUnlockDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text('Unlock?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text('Ok'),
        ),
      ],
    );
  }
}

Widget buildDefaultUnlockDialog(_,__) => DefaultUnlockDialog();
