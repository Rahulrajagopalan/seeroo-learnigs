import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rahul_test_file/l10n/language.dart';

part 'translation_bloc.freezed.dart';
part 'translation_event.dart';
part 'translation_state.dart';

@injectable
class TranslationBloc extends Bloc<TranslationEvent, TranslationState> {
  TranslationBloc()
      : super(TranslationState.initial(locale: Language.en.locale)) {
    on<TranslationEvent>((event, emit) {
      emit(TranslationState.loading(locale: Language.en.locale));
      try {
        emit(TranslationState.success(locale: event.locale));
      } catch (e) {
        emit(
          TranslationState.failed(
              locale: Language.en.locale,
              error: 'Exception occurred while changing language'),
        );
      }
    });
  }
}
