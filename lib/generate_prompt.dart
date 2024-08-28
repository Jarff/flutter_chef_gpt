import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

String generatePrompt(BuildContext context, Map<String, dynamic> values) {
  final AppLocalizations loc = AppLocalizations.of(context);

  final dietRestrictions = '''
    - ${loc.translate("Low-calorie")}: ${values['low_calorie'] ? loc.translate("YES") : loc.translate("NO")}
    - ${loc.translate("Vegan")}: ${values['vegan'] ? loc.translate("YES") : loc.translate("NO")}
    - ${loc.translate("Paleo")}: ${values['paleo'] ? loc.translate("YES") : loc.translate("NO")}
  ''';

  switch (loc.locale.languageCode) {
    case 'es':
      return '''
        Eres un chef culinario experto que ha cocinado para los mejores restaurantes del mundo. 
        Elabora una receta deliciosa, creativa y única con las siguientes consideraciones:

        Reglas:
          - La respuesta debe estar en formato JSON.
          - La receta debe tener un título creativo.
          - Incluye instrucciones detalladas con tiempos estimados de cocción para cada paso.
          - Cumple con las siguientes preferencias dietéticas: $dietRestrictions
          - Utiliza solo los ingredientes disponibles (${values['ingredients']}).
            Evita ingredientes incompatibles según la dieta especificada.
          - Asegúrate de que el tiempo de cocción sea inferior a ${values['cooking_time']} minutos.
          - Diseña la receta para servir a ${values['people']} personas.
          - Evalúa la dificultad de ejecución como ${values['difficulty']}.
          - La receta debe tener una breve descripción.
          - Sé creativo con las técnicas de cocina y las combinaciones de sabores.
          - Siéntete libre de incorporar hierbas y especias para un toque extra de sabor.

        El objeto JSON debe incluir los siguientes campos:
        - "title": [cadena]
        - "description": [cadena]
        - "people": [número] (según el input proporcionado)
        - "difficulty": [cadena] (según el input proporcionado)
        - "cooking_time": [número] (según el input proporcionado)
        - "low_calorie": [cadena] (según el input proporcionado)
        - "vegan": [cadena] (según el input proporcionado)
        - "paleo": [cadena] (según el input proporcionado)
        - "calories": [número]
        - "macros": {"protein": [número], "fats": [número], "carbs": [número]}
        - "ingredients": [{"name": [cadena], "amount": [cadena]}, ...] (según el tipo de dieta y los ingredientes proporcionados)
        - "instructions": [{"step": [número], "description": [cadena]}, ...]

        Da formato a la respuesta como un objeto JSON válido con todos los campos completos. Aquí está la estructura de referencia:

        {
          "title": /* detalles */,
          "description":  /* detalles */,
          "people":  /* detalles */,
          "difficulty":  /* detalles */,
          "cooking_time":  /* detalles */,
          "low_calorie":  /* detalles */,
          "vegan":  /* detalles */, 
          "paleo":  /* detalles */,
          "calories":  /* detalles */,
          "macros": { /* detalles */ },
          "ingredients": { /* detalles */ },
          "instructions": { /* detalles */ }
        }

        Responde solo con el objeto JSON completado, sin ningún texto explicativo o descriptivo adicional. El JSON debe estar completo y listo para su análisis.''';
    default:
      return '''
        You are an expert culinary chef who has cooked for the best restaurants in the world.
        Craft a delightful, creative and unique recipe with the following considerations:

        Rules:
          - Response must be in JSON format.
          - Recipe must have a creative Title.
          - Include detailed instructions with estimated cooking times for each step.
          - Adhere to the following dietary preferences: $dietRestrictions
          - Utilize only the available ingredients (${values['ingredients']}).
            Avoid incompatible ingredients based on the specified diet.
          - Ensure the cooking time is under ${values['cooking_time']} minutes.
          - Design the recipe to serve ${values['people']} people.
          - Evaluate the difficulty of execution as ${values['difficulty']}.
          - Recipe must have a short description.
          - Be creative with the cooking techniques and flavor combinations
          - Feel free to incorporate herbs and spices for an extra burst of flavor

        The JSON object must include the following fields:
        - "title": [string]
        - "description": [string]
        - "people": [number] (based on the provided input)
        - "difficulty": [string] (based on the provided input)
        - "cooking_time": [number] (based on the provided input)
        - "low_calori": [string] (based on the provided input)
        - "vegan": [string] (based on the provided input)
        - "paleo": [string] (based on the provided input)
        - "calories": [number],
        - "macros": {"protein": [number], "fats": [number], "carbs": [number]},
        - "ingredients": [{"name": [string], "amount": [string]}, ...] (based on the provided diet type and ingredients provided),
        - "instructions": [{"step": [number], "description": [string]}, ...]

        Format the response as a valid JSON object with all fields filled. Here is the structure for reference:

        {
          "title": /* details */,
          "description":  /* details */,
          "people":  /* details */,
          "difficulty":  /* details */,
          "cooking_time":  /* details */,
          "low_calorie":  /* details */,
          "vegan":  /* details */, 
          "paleo":  /* details */,
          "calories":  /* details */,
          "macros": { /* details */ },
          "ingredients": { /* details */ },
          "instructions": { /* details */ }
        }

        Respond only with the completed JSON object, without any additional explanatory or descriptive text. The JSON should be complete and ready for parsing
  ''';
  }
}
