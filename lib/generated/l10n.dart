// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.`
  String get loremIpsum {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.',
      name: 'loremIpsum',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus. Praesent tincidunt ut dui fermentum aliquam. Donec nec sodales mi. Proin ultrices dignissim ullamcorper. Nam eu consectetur nunc. Vivamus facilisis fermentum varius. Integer rutrum, ligula ac tempus maximus, erat justo molestie mauris, tempor porta tellus elit egestas ante. Proin ac leo quis felis posuere dapibus id et felis. Aenean id mattis nulla. Sed at nibh et tortor tempor malesuada. Quisque egestas urna tellus, in tristique risus ultricies laoreet. Donec fringilla, est non dapibus tempor, nulla metus lacinia arcu, at mattis ex dui nec massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras consequat id purus consectetur malesuada.\n\nVestibulum eu varius orci. Nunc ornare neque sit amet volutpat tempus. Aenean et magna nisl. Integer ornare nulla eget odio rutrum tincidunt. Proin imperdiet in sapien id euismod. Sed interdum enim non euismod pulvinar. Quisque imperdiet eros lectus, vel tempus nibh tristique eu. Pellentesque nisi ex, fringilla varius nibh et, porta mollis sapien. Donec quis pulvinar nulla. In tempor a massa et venenatis. Pellentesque scelerisque tempus tellus at venenatis. Aliquam sed nunc vel purus ultrices porttitor pharetra fringilla arcu.\nVestibulum ut dui id quam feugiat viverra at ut dui. Ut placerat consequat iaculis. Fusce at urna quis libero vulputate sollicitudin et maximus est. Pellentesque in massa id enim laoreet vehicula nec eu velit. Aliquam vestibulum dolor eu felis feugiat bibendum. Praesent maximus rhoncus elit in finibus. Interdum et malesuada fames ac ante ipsum primis in faucibus.`
  String get loremIpsumBody {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus. Praesent tincidunt ut dui fermentum aliquam. Donec nec sodales mi. Proin ultrices dignissim ullamcorper. Nam eu consectetur nunc. Vivamus facilisis fermentum varius. Integer rutrum, ligula ac tempus maximus, erat justo molestie mauris, tempor porta tellus elit egestas ante. Proin ac leo quis felis posuere dapibus id et felis. Aenean id mattis nulla. Sed at nibh et tortor tempor malesuada. Quisque egestas urna tellus, in tristique risus ultricies laoreet. Donec fringilla, est non dapibus tempor, nulla metus lacinia arcu, at mattis ex dui nec massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras consequat id purus consectetur malesuada.\n\nVestibulum eu varius orci. Nunc ornare neque sit amet volutpat tempus. Aenean et magna nisl. Integer ornare nulla eget odio rutrum tincidunt. Proin imperdiet in sapien id euismod. Sed interdum enim non euismod pulvinar. Quisque imperdiet eros lectus, vel tempus nibh tristique eu. Pellentesque nisi ex, fringilla varius nibh et, porta mollis sapien. Donec quis pulvinar nulla. In tempor a massa et venenatis. Pellentesque scelerisque tempus tellus at venenatis. Aliquam sed nunc vel purus ultrices porttitor pharetra fringilla arcu.\nVestibulum ut dui id quam feugiat viverra at ut dui. Ut placerat consequat iaculis. Fusce at urna quis libero vulputate sollicitudin et maximus est. Pellentesque in massa id enim laoreet vehicula nec eu velit. Aliquam vestibulum dolor eu felis feugiat bibendum. Praesent maximus rhoncus elit in finibus. Interdum et malesuada fames ac ante ipsum primis in faucibus.',
      name: 'loremIpsumBody',
      desc: '',
      args: [],
    );
  }

  /// `Test button`
  String get buttonLabel {
    return Intl.message(
      'Test button',
      name: 'buttonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Section`
  String get section {
    return Intl.message(
      'Section',
      name: 'section',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}