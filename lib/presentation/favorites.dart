import 'dart:convert';

import 'package:chef_gpt/models/Recipe.dart';
import 'package:chef_gpt/presentation/widgets/RecipeContent.dart';
import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Navigates back to the previous screen
          },
        ),
        // title: Text(
        //   "Favorites",
        //   style: TextStyle(color: Colors.white),
        // ),
        title: Text(
          AppLocalizations.of(context).translate("Favorites"),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder(
        future: _getFavorites(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return Scaffold(
              body: Container(
                color: Colors.black,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: SafeArea(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding:
                                EdgeInsets.only(top: 5, bottom: 5, right: 10),
                            // color: Color.fromARGB(255, 28, 32, 35),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 28, 32, 35),
                              // border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: ListTile(
                                    title: Text(
                                      snapshot.data![index].title,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onTap: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RecipeContent(
                                            recipe: snapshot.data![index],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 15,
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ),
            );
          } else {
            return Center(
                child: Text(
              "Aun no hay recetas guardadas",
              style: TextStyle(color: Colors.white),
            ));
          }
        },
      ),
    );
  }

  Future<List<Recipe>> _getFavorites() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? tmp = prefs.getStringList('favorites');
    List<Recipe> favorites = [];

    if (tmp != null) {
      for (var element in tmp) {
        favorites.add(Recipe.fromJson(jsonDecode(element)));
      }
    }
    return favorites;
  }
}
