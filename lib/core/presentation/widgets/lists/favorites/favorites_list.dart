import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/presentation/widgets/FavoriteRow.dart';
import 'package:flutter/material.dart';

class FavoriteList extends StatelessWidget {
  final List<Recipe> favorites;
  final Function? refreshList;
  const FavoriteList(
      {super.key, required this.favorites, required this.refreshList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  return FavoriteRow(
                      recipe: favorites[index], refreshList: refreshList);
                }),
          ),
        ),
      ),
    );
  }
}
