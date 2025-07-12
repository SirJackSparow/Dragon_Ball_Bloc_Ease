import 'package:bloc_ease/bloc_ease.dart';
import 'package:dragonball_bloc_ease/screen/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/character_cubit.dart';
import 'di/Injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocEaseStateWidgetProvider(
        initialStateBuilder: (_) => const Center(child: Text('Initial State')),
        loadingStateBuilder: (state) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(value: state.progress),
                  if (state.message != null)
                    Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(state.message!)),
                ],
              ),
            ),
        failureStateBuilder: (state) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.message ?? "Error"),
                  if (state.retryCallback != null)
                    ElevatedButton(
                        onPressed: state.retryCallback,
                        child: const Text('Retry')),
                ],
              ),
            ),
        child: MultiBlocProvider (
          providers: [
            BlocProvider(create: (context) => CharacterCubit(sl())..getCharacters())
          ],
          child: MaterialApp.router(
            routerConfig: Approutes.router,
            title: 'Dragon Ball',
            debugShowCheckedModeBanner: false,
          ),
        ));
  }
}
