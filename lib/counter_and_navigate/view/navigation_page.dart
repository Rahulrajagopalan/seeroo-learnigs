import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/view/routed_screen.dart';
import 'package:rahul_test_file/domain/entities/post_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rahul_test_file/presentation/features/translation/translation_bloc/translation_bloc.dart';
import 'package:rahul_test_file/l10n/lang_extensions.dart';
import 'package:rahul_test_file/l10n/language.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
        actions: [
          IconButton(
              onPressed: () {
                if (context.loc.localeName == Language.en.locale.languageCode) {
                  context.read<TranslationBloc>().add(
                      TranslationEvent.changeLanguage(
                          locale: Language.es.locale));
                } else {
                  context.read<TranslationBloc>().add(
                      TranslationEvent.changeLanguage(
                          locale: Language.en.locale));
                }
              },
              icon: Icon(Icons.language_sharp))
        ],
      ),
      body: BlocListener<TranslationBloc, TranslationState>(
        listener: (context, state) {
          state.when(
              initial: (_) {},
              loading: (_) {},
              failed: (_, __) {},
              success: (_) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(context.loc.localeName),
                  backgroundColor: Colors.green,
                ));
              });
        },
        child:
            BlocBuilder<NavigateBloc, NavigateState>(builder: (context, state) {
          return state.when(
              initial: () => Center(
                    child: Text(
                        "${AppLocalizations.of(context)!.hello("Lovley")}, Press the button"),
                  ),
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              success: (List<PostModel> posts) => RoutedScreen(
                    posts: posts,
                  ),
              failure: (String message) => Center(
                    child: Text(
                      message,
                      style: TextStyle(color: Colors.red),
                    ),
                  ));
        }),
      ),
      // body: Localizations.override(
      //   context: context,
      //   locale: Locale('ja'),
      //   child: DatePickerDialog(
      //       firstDate: DateTime(2024), lastDate: DateTime(2025)),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.read<NavigateBloc>().add(const NavigateEvent.fetchPosts()),
        child: const Icon(Icons.podcasts),
      ),
    );
  }
}
