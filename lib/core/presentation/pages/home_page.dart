import 'package:chef_gpt/core/application/bloc/home_page/homepage_bloc.dart';
// import 'package:chef_gpt/core/application/bloc/home_page/homepage_event.dart';
import 'package:chef_gpt/core/application/bloc/home_page/homepage_state.dart';
// import 'package:chef_gpt/generate_prompt.dart';
// import 'package:chef_gpt/core/presentation/pages/favorites_page.dart';
import 'package:chef_gpt/core/presentation/pages/recipe_page.dart';
import 'package:chef_gpt/core/presentation/widgets/AppDrawer.dart';
import 'package:chef_gpt/core/presentation/widgets/ChipsInput.dart';
import 'package:chef_gpt/core/presentation/widgets/DietRestriction.dart';
import 'package:chef_gpt/core/presentation/widgets/SelectPeopleButton.dart';
import 'package:chef_gpt/core/presentation/widgets/StepRow.dart';
import 'package:chef_gpt/core/presentation/widgets/ToppingInputChip.dart';
import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:chef_gpt/utils/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final FocusNode _chipFocusNode = FocusNode();
  final rate = 12;
  List<String> _toppings = <String>[];
  final List<String> list = <String>['Novice', 'Medium', 'Expert'];
  // Create a GlobalKey for the Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageBloc>(
      create: (context) => HomePageBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                // Use the key to open the drawer
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
          ),
          drawer: const AppDrawer(),
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
                      AppLocalizations.of(context)
                          .translate("Recipe Generator Powered By Embercom"),
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
                  BlocBuilder<HomePageBloc, HomepageState>(
                      builder: (context, state) {
                    return ChipsInput<String>(
                      values: state.toppings,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context)
                            .translate("Search for toppings"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      strutStyle: const StrutStyle(fontSize: 15),
                      onChanged: (List<String> data) =>
                          context.read<HomePageBloc>().changeToppings(data),
                      onSubmitted: (String text) {
                        if (text.trim().isNotEmpty) {
                          // setState(() {
                          //   _toppings = <String>[..._toppings, text.trim()];
                          // });
                          context.read<HomePageBloc>().changeToppings(
                              <String>[...state.toppings, text.trim()]);
                        } else {
                          _chipFocusNode.unfocus();
                          // setState(() {
                          //   _toppings = <String>[];
                          // });
                          context
                              .read<HomePageBloc>()
                              .changeToppings(<String>[]);
                        }
                      },
                      chipBuilder: _chipBuilder,
                      onTextChanged: (String value) =>
                          context.read<HomePageBloc>().search(value),
                    );
                  }),
                  const SizedBox(height: 5),
                  Text(AppLocalizations.of(context)
                      .translate("Separate each ingredient with a comma")),
                  const SizedBox(height: 20),
                  // # MARK: STEP 2
                  StepRow(
                      step: "2",
                      title: AppLocalizations.of(context)
                          .translate("How much time can you spare?")),
                  BlocBuilder<HomePageBloc, HomepageState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          SliderTheme(
                            data: const SliderThemeData(
                              valueIndicatorTextStyle: TextStyle(
                                color: Colors.black, // Set the label color here
                                fontWeight: FontWeight
                                    .bold, // Optional: Customize the font weight
                              ),
                            ),
                            child: Slider(
                              value: state.rating,
                              onChanged: (newRating) => context
                                  .read<HomePageBloc>()
                                  .selectTime(newRating, rate),
                              divisions: rate,
                              label: translateValue(state.rating, rate),
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
                                  "${context.read<HomePageBloc>().state.selectedTime} ${AppLocalizations.of(context).translate('minutes')}"),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // # MARK: STEP 3
                  StepRow(
                      step: "3",
                      title: AppLocalizations.of(context)
                          .translate("How many hungry souls?")),
                  const SizedBox(height: 10),
                  BlocBuilder<HomePageBloc, HomepageState>(
                      builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: SelectPeopleButton(
                              numberOfPeople: "2",
                              isActive: state.selectedPerson == 2,
                              onTap: () =>
                                  context.read<HomePageBloc>().selectPerson(2),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SelectPeopleButton(
                              numberOfPeople: "4",
                              isActive: state.selectedPerson == 4,
                              onTap: () =>
                                  context.read<HomePageBloc>().selectPerson(4),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SelectPeopleButton(
                            numberOfPeople: "6",
                            isActive: state.selectedPerson == 6,
                            onTap: () =>
                                context.read<HomePageBloc>().selectPerson(6),
                          ),
                        ),
                      ],
                    );
                  }),
                  const SizedBox(height: 25),
                  // # MARK: STEP 4
                  StepRow(
                      step: "4",
                      title: AppLocalizations.of(context).translate(
                          "Are you the master of the kitchen domain?")),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<HomePageBloc, HomepageState>(
                      builder: (context, state) {
                    return SizedBox(
                      // width: double.infinity,
                      child: DropdownMenu<String>(
                        width: MediaQuery.of(context).size.width - 40,
                        initialSelection: list.first,
                        onSelected: (String? value) => context
                            .read<HomePageBloc>()
                            .selectDifficulty(value!),
                        dropdownMenuEntries:
                            list.map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                              value: value,
                              label: AppLocalizations.of(context)
                                  .translate(value));
                        }).toList(),
                      ),
                    );
                  }),
                  const SizedBox(height: 20),
                  // # MARK: STEP 5
                  StepRow(
                      step: "5",
                      title: AppLocalizations.of(context).translate(
                          "Any specific preferences for your feast?")),
                  const SizedBox(height: 10),
                  BlocBuilder<HomePageBloc, HomepageState>(
                      builder: (context, state) {
                    return DietRestriction(
                      isActive: state.lowCalorie,
                      title:
                          "⚖️ ${AppLocalizations.of(context).translate("Low Cal")}",
                      onChanged: (bool value) =>
                          context.read<HomePageBloc>().selectLowCalorie(value),
                    );
                  }),
                  const SizedBox(height: 10),
                  BlocBuilder<HomePageBloc, HomepageState>(
                      builder: (context, state) {
                    return DietRestriction(
                      isActive: state.vegan,
                      title:
                          "🌿 ${AppLocalizations.of(context).translate('Vegan')}",
                      onChanged: (value) =>
                          context.read<HomePageBloc>().selectVegan(value),
                    );
                  }),
                  const SizedBox(height: 10),
                  BlocBuilder<HomePageBloc, HomepageState>(
                      builder: (context, state) {
                    return DietRestriction(
                      isActive: state.paleo,
                      title:
                          "🍖 ${AppLocalizations.of(context).translate('Paleo')}",
                      onChanged: (value) =>
                          context.read<HomePageBloc>().selectPaleo(value),
                    );
                  }),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () async {
                      if (context
                          .read<HomePageBloc>()
                          .state
                          .toppings
                          .isNotEmpty) {
                        // Build the configuration:
                        Map<String, dynamic> configuration = {
                          "ingredients": context
                              .read<HomePageBloc>()
                              .state
                              .toppings
                              .join(", "),
                          "low_calorie":
                              context.read<HomePageBloc>().state.lowCalorie,
                          "vegan": context.read<HomePageBloc>().state.vegan,
                          "paleo": context.read<HomePageBloc>().state.paleo,
                          "cooking_time":
                              context.read<HomePageBloc>().state.selectedTime,
                          "people":
                              context.read<HomePageBloc>().state.selectedPerson,
                          "difficulty":
                              context.read<HomePageBloc>().state.difficulty,
                        };
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipePage(
                                    configuration: configuration,
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
      }),
    );
  }

  Widget _chipBuilder(BuildContext context, String topping) {
    return ToppingInputChip(
      topping: topping,
      onDeleted: (String topping) {
        context.read<HomePageBloc>().removeTopping(topping);
      },
    );
  }

  // void _onSearchChanged(String value) async {
  //   if (value.isNotEmpty && (value.endsWith(',') || value.endsWith(' '))) {
  //     // Check if the value contains a space or comma
  //     if (value.contains(RegExp(r'[ ,]'))) {
  //       // Split the input value by space or comma
  //       List<String> parts = value.split(RegExp(r'[ ,]+'));

  //       // Remove empty strings from the list
  //       parts.removeWhere((part) => part.isEmpty);

  //       // Process each part
  //       for (String part in parts) {
  //         if (!_toppings.contains(part)) {
  //           setState(() {
  //             _toppings.add(part);
  //           });
  //         } else {
  //           setState(() {
  //             _toppings.remove(part);
  //           });
  //         }
  //       }
  //     }
  //   }
  // }

  // void _onChipDeleted(BuildContext context, String topping) {
  //   context.read<HomePageBloc>().removeTopping(topping);
  //   setState(() {
  //     _toppings.remove(topping);
  //   });
  // }

  // void _onSubmitted(String text) {
  //   if (text.trim().isNotEmpty) {
  //     setState(() {
  //       _toppings = <String>[..._toppings, text.trim()];
  //     });
  //   } else {
  //     _chipFocusNode.unfocus();
  //     setState(() {
  //       _toppings = <String>[];
  //     });
  //   }
  // }

  // void _onChanged(List<String> data) {
  //   setState(() {
  //     _toppings = data;
  //   });
  // }
}
