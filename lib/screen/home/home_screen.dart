import 'package:bloc_ease/bloc_ease.dart';
import 'package:dragonball_bloc_ease/core/model/dragonball_model.dart';
import 'package:dragonball_bloc_ease/cubit/character_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';

typedef HomeBlocEaseBuilder
    = BlocEaseStateBuilder<CharacterCubit, DragonballModel>;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CharacterCubit>().getCharacters();
          },
          child: const Icon(Icons.refresh),
        ),
        body: HomeBlocEaseBuilder(
          successBuilder: (character) => ListView.builder(
              itemCount: character.items?.length ?? 0,
              itemBuilder: (_, i) {
                final item = character.items?[i];
                return Card(
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 10,
                  child: ListTile(
                    leading: Image.network(
                      item?.image ?? "",
                    ),
                    title: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LiquidGlass(
                          glassContainsChild: true,
                            settings: const LiquidGlassSettings(
                              blend: 30,
                              thickness: 10
                            ),
                            shape: const LiquidRoundedSuperellipse(
                              borderRadius: Radius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(item?.name ?? ""),
                            )),
                      ],
                    ),
                    subtitle: Text(item?.description ?? ""),
                  ),
                );
              }),
          loadingStateBuilder: (state) =>
              const Center(child: Text("Loading...")),
          failureStateBuilder: (state) =>
              Center(child: Text(state.message ?? "Error")),
        ));
  }
}
