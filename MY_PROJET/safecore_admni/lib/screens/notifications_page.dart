import 'package:flutter/material.dart';

class NotificationsButton extends StatelessWidget {
  final int count;
  final VoidCallback onPressed;

  const NotificationsButton({key? key,
  required this.count,
  required this.onPressed,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(icon: const Icon(Icons.notifications),
        onPressed: onPressed,),
        if (count >0)
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(count.toString(),
            style: const TextStyle(color:Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
