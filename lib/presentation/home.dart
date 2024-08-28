import 'package:chef_gpt/generate_prompt.dart';
import 'package:chef_gpt/presentation/recipe.dart';
import 'package:chef_gpt/presentation/widgets/ChipsInput.dart';
import 'package:chef_gpt/presentation/widgets/DietRestriction.dart';
import 'package:chef_gpt/presentation/widgets/SelectPeopleButton.dart';
import 'package:chef_gpt/presentation/widgets/StepRow.dart';
import 'package:chef_gpt/presentation/widgets/ToppingInputChip.dart';
import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final FocusNode _chipFocusNode = FocusNode();
  double rating = 0;
  String selectedTime = "5";
  final rate = 12;
  int selectedPerson = 2;
  List<String> _toppings = <String>[];
  final List<String> list = <String>['Novice', 'Medium', 'Expert'];
  bool lowCalorie = false;
  bool vegan = false;
  bool paleo = false;
  String difficulty = "Novice";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration:
                const BoxDecoration(color: Color.fromARGB(239, 0, 0, 0)),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView(children: [
              // # MARK: TITLE
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Center(
                    child: Text(
                  AppLocalizations.of(context).translate(
                      "Recipe Generator powered by Google and GeminiAI"),
                  style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center,
                )),
              ),
              // # MARK: STEP 1
              StepRow(
                  step: "1",
                  title: AppLocalizations.of(context)
                      .translate("What ingregients are in your arsenal?")),
              const SizedBox(height: 10),
              // Search bar
              ChipsInput<String>(
                values: _toppings,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)
                      .translate("Search for toppings"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                strutStyle: const StrutStyle(fontSize: 15),
                onChanged: _onChanged,
                onSubmitted: _onSubmitted,
                chipBuilder: _chipBuilder,
                onTextChanged: _onSearchChanged,
              ),
              const SizedBox(height: 5),
              Text(AppLocalizations.of(context)
                  .translate("Separate each ingredient with a comma")),
              const SizedBox(height: 20),
              // # MARK: STEP 2
              StepRow(
                  step: "2",
                  title: AppLocalizations.of(context)
                      .translate("How much time can you spare?")),
              SliderTheme(
                data: const SliderThemeData(
                  valueIndicatorTextStyle: TextStyle(
                    color: Colors.black, // Set the label color here
                    fontWeight:
                        FontWeight.bold, // Optional: Customize the font weight
                  ),
                ),
                child: Slider(
                  value: rating,
                  onChanged: (newRating) {
                    setState(() {
                      rating = newRating;
                      selectedTime = _translateValue(rating);
                    });
                    // Map the normalized slider value to the desired range
                  },
                  divisions: rate,
                  label: _translateValue(rating),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.lock_clock,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                      "$selectedTime ${AppLocalizations.of(context).translate('minutes')}"),
                ],
              ),
              const SizedBox(height: 20),
              // # MARK: STEP 3
              StepRow(
                  step: "3",
                  title: AppLocalizations.of(context)
                      .translate("How many hungry souls?")),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: SelectPeopleButton(
                        numberOfPeople: "2",
                        isActive: selectedPerson == 2,
                        onTap: () => setState(() {
                          selectedPerson = 2;
                        }),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SelectPeopleButton(
                        numberOfPeople: "4",
                        isActive: selectedPerson == 4,
                        onTap: () => setState(() {
                          selectedPerson = 4;
                        }),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SelectPeopleButton(
                      numberOfPeople: "6",
                      isActive: selectedPerson == 6,
                      onTap: () => setState(() {
                        selectedPerson = 6;
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              // # MARK: STEP 4
              StepRow(
                  step: "4",
                  title: AppLocalizations.of(context)
                      .translate("Are you the master of the kitchen domain?")),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                // width: double.infinity,
                child: DropdownMenu<String>(
                  width: MediaQuery.of(context).size.width - 40,
                  initialSelection: list.first,
                  onSelected: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      difficulty = value!;
                    });
                  },
                  dropdownMenuEntries:
                      list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value,
                        label: AppLocalizations.of(context).translate(value));
                  }).toList(),
                ),
              ),
              const SizedBox(height: 20),
              // # MARK: STEP 5
              StepRow(
                  step: "5",
                  title: AppLocalizations.of(context)
                      .translate("Any specific preferences for your feast?")),
              const SizedBox(height: 10),
              DietRestriction(
                isActive: lowCalorie,
                title:
                    "⚖️ ${AppLocalizations.of(context).translate("Low Cal")}",
                onChanged: (value) {
                  setState(() {
                    lowCalorie = value;
                    // vegan = false;
                    // paleo = false;
                  });
                },
              ),
              const SizedBox(height: 10),
              DietRestriction(
                isActive: vegan,
                title: "🌿 ${AppLocalizations.of(context).translate('Vegan')}",
                onChanged: (value) {
                  setState(() {
                    vegan = value;
                    // lowCalorie = false;
                    // paleo = false;
                  });
                },
              ),
              const SizedBox(height: 10),
              DietRestriction(
                isActive: paleo,
                title: "🍖 ${AppLocalizations.of(context).translate('Paleo')}",
                onChanged: (value) {
                  setState(() {
                    paleo = value;
                    // vegan = false;
                    // lowCalorie = false;
                  });
                },
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () async {
                  if (_toppings.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecipePage(
                                configuration: {
                                  "ingredients": _toppings.join(", "),
                                  "low_calorie": lowCalorie,
                                  "vegan": vegan,
                                  "paleo": paleo,
                                  "cooking_time": selectedTime,
                                  "people": selectedPerson,
                                  "difficulty": difficulty,
                                },
                              )),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppLocalizations.of(context)
                            .translate('Missing information')),
                        duration: const Duration(seconds: 3),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.zero), // Remove default padding
                  minimumSize: MaterialStateProperty.all<Size>(
                    const Size(double.infinity, 50),
                  ), // Set minimum size to full width
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white), // Set background color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Set the border radius here
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context).translate("Confirm"),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _chipBuilder(BuildContext context, String topping) {
    return ToppingInputChip(
      topping: topping,
      onDeleted: _onChipDeleted,
    );
  }

  String _translateValue(double value) {
    // value * rate
    return (5 + ((value * rate) * 10)).clamp(5, 120).toInt().toString();
  }

  void _onSearchChanged(String value) async {
    if (value.isNotEmpty && (value.endsWith(',') || value.endsWith(' '))) {
      // Check if the value contains a space or comma
      if (value.contains(RegExp(r'[ ,]'))) {
        // Split the input value by space or comma
        List<String> parts = value.split(RegExp(r'[ ,]+'));

        // Remove empty strings from the list
        parts.removeWhere((part) => part.isEmpty);

        // Process each part
        for (String part in parts) {
          if (!_toppings.contains(part)) {
            setState(() {
              _toppings.add(part);
            });
          } else {
            setState(() {
              _toppings.remove(part);
            });
          }
        }
      }
    }
  }

  void _onChipDeleted(String topping) {
    setState(() {
      _toppings.remove(topping);
    });
  }

  void _onSubmitted(String text) {
    if (text.trim().isNotEmpty) {
      setState(() {
        _toppings = <String>[..._toppings, text.trim()];
      });
    } else {
      _chipFocusNode.unfocus();
      setState(() {
        _toppings = <String>[];
      });
    }
  }

  void _onChanged(List<String> data) {
    setState(() {
      _toppings = data;
    });
  }
}
