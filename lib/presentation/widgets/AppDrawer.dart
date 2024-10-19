import 'package:chef_gpt/presentation/favorites.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 28, 32, 35),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Embercom Chef AI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Beta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              title: const Text(
                'Favorites',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // First we close the drawer...
                Navigator.pop(context);
                // Handle the tap action, such as navigating to a new page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FavoritesPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
