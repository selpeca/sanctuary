import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0), 
          child: Image.network(
            'https://vibraslab.com/wp-content/uploads/2022/08/Eladio1-U00382872020cmJ-510x600@abc.jpg',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
            ),
        ),
      ),
      title: Text(
        'Sanctuary',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Color(0xFF004AC6),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Icon(Icons.search),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
