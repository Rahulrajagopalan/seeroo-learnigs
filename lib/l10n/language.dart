import 'package:flutter/material.dart';

enum Language implements Comparable<Language> {
  en(locale: Locale('en')),
  es(locale: Locale('es'));

  const Language({
    required this.locale,
  });

  final Locale locale;

  @override
  int compareTo(Language other) => locale.hashCode - other.locale.hashCode;
}
