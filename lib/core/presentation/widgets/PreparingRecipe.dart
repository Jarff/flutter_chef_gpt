import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

class PreparingRecipe extends StatelessWidget {
  const PreparingRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context).translate("¡Hang on!"),
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            AppLocalizations.of(context)
                .translate("We are preparing the recipe based on your needs"),
            style: const TextStyle(fontSize: 25, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          const CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
