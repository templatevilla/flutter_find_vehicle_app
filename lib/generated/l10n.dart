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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Find your vehicle`
  String get findYourVehicle {
    return Intl.message(
      'Find your vehicle',
      name: 'findYourVehicle',
      desc: '',
      args: [],
    );
  }

  /// `Start Location`
  String get startLocation {
    return Intl.message(
      'Start Location',
      name: 'startLocation',
      desc: '',
      args: [],
    );
  }

  /// `Your Current Location`
  String get yourCurrentLocation {
    return Intl.message(
      'Your Current Location',
      name: 'yourCurrentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Your Destination`
  String get yourDestination {
    return Intl.message(
      'Your Destination',
      name: 'yourDestination',
      desc: '',
      args: [],
    );
  }

  /// `Aloha Cafe, 4342A Marisson Hotel`
  String get alohaCafe4342aMarissonHotel {
    return Intl.message(
      'Aloha Cafe, 4342A Marisson Hotel',
      name: 'alohaCafe4342aMarissonHotel',
      desc: '',
      args: [],
    );
  }

  /// `Available options`
  String get availableOptions {
    return Intl.message(
      'Available options',
      name: 'availableOptions',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `GoCab Coin`
  String get gocabCoin {
    return Intl.message(
      'GoCab Coin',
      name: 'gocabCoin',
      desc: '',
      args: [],
    );
  }

  /// `You have 120000 Gocab Coins`
  String get youHave120000GocabCoins {
    return Intl.message(
      'You have 120000 Gocab Coins',
      name: 'youHave120000GocabCoins',
      desc: '',
      args: [],
    );
  }

  /// `Find Driver`
  String get findDriver {
    return Intl.message(
      'Find Driver',
      name: 'findDriver',
      desc: '',
      args: [],
    );
  }

  /// `Back To Home`
  String get backToHome {
    return Intl.message(
      'Back To Home',
      name: 'backToHome',
      desc: '',
      args: [],
    );
  }

  /// `Download Bill`
  String get downloadBill {
    return Intl.message(
      'Download Bill',
      name: 'downloadBill',
      desc: '',
      args: [],
    );
  }

  /// `You’ve arrived`
  String get youveArrived {
    return Intl.message(
      'You’ve arrived',
      name: 'youveArrived',
      desc: '',
      args: [],
    );
  }

  /// `Make sure your belongings are not left behind 👀`
  String get makeSureYourBelongingsAreNotLeftBehind {
    return Intl.message(
      'Make sure your belongings are not left behind 👀',
      name: 'makeSureYourBelongingsAreNotLeftBehind',
      desc: '',
      args: [],
    );
  }

  /// `Handoko Mulyono`
  String get handokoMulyono {
    return Intl.message(
      'Handoko Mulyono',
      name: 'handokoMulyono',
      desc: '',
      args: [],
    );
  }

  /// `Toyota HR-V`
  String get toyotaHrv {
    return Intl.message(
      'Toyota HR-V',
      name: 'toyotaHrv',
      desc: '',
      args: [],
    );
  }

  /// `L-2323-RF`
  String get l2323rf {
    return Intl.message(
      'L-2323-RF',
      name: 'l2323rf',
      desc: '',
      args: [],
    );
  }

  /// `Trip completed`
  String get tripCompleted {
    return Intl.message(
      'Trip completed',
      name: 'tripCompleted',
      desc: '',
      args: [],
    );
  }

  /// `GoCab#125489658745`
  String get gocab125489658745 {
    return Intl.message(
      'GoCab#125489658745',
      name: 'gocab125489658745',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Monday, 22 May 2023`
  String get monday22May2023 {
    return Intl.message(
      'Monday, 22 May 2023',
      name: 'monday22May2023',
      desc: '',
      args: [],
    );
  }

  /// `How was your trip?`
  String get howWasYourTrip {
    return Intl.message(
      'How was your trip?',
      name: 'howWasYourTrip',
      desc: '',
      args: [],
    );
  }

  /// `(Give 1 to five stars about your trip)`
  String get give1ToFiveStarsAboutYourTrip {
    return Intl.message(
      '(Give 1 to five stars about your trip)',
      name: 'give1ToFiveStarsAboutYourTrip',
      desc: '',
      args: [],
    );
  }

  /// `Trip Details`
  String get tripDetails {
    return Intl.message(
      'Trip Details',
      name: 'tripDetails',
      desc: '',
      args: [],
    );
  }

  /// `+3023 Coins`
  String get coins {
    return Intl.message(
      '+3023 Coins',
      name: 'coins',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Location`
  String get pickupLocation {
    return Intl.message(
      'Pickup Location',
      name: 'pickupLocation',
      desc: '',
      args: [],
    );
  }

  /// `Airlangga University`
  String get airlanggaUniversity {
    return Intl.message(
      'Airlangga University',
      name: 'airlanggaUniversity',
      desc: '',
      args: [],
    );
  }

  /// `Destination`
  String get destination {
    return Intl.message(
      'Destination',
      name: 'destination',
      desc: '',
      args: [],
    );
  }

  /// `Get ready, the driver will come soon`
  String get getReadyTheDriverWillComeSoon {
    return Intl.message(
      'Get ready, the driver will come soon',
      name: 'getReadyTheDriverWillComeSoon',
      desc: '',
      args: [],
    );
  }

  /// `The driver will arrive in`
  String get theDriverWillArriveIn {
    return Intl.message(
      'The driver will arrive in',
      name: 'theDriverWillArriveIn',
      desc: '',
      args: [],
    );
  }

  /// `05.21 Mins`
  String get mins {
    return Intl.message(
      '05.21 Mins',
      name: 'mins',
      desc: '',
      args: [],
    );
  }

  /// `Toyota HR-V + Black`
  String get toyotaHrvBlack {
    return Intl.message(
      'Toyota HR-V + Black',
      name: 'toyotaHrvBlack',
      desc: '',
      args: [],
    );
  }

  /// `Medium Size`
  String get mediumSize {
    return Intl.message(
      'Medium Size',
      name: 'mediumSize',
      desc: '',
      args: [],
    );
  }

  /// `4.5`
  String get rate {
    return Intl.message(
      '4.5',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `Top Rated Driver`
  String get topRatedDriver {
    return Intl.message(
      'Top Rated Driver',
      name: 'topRatedDriver',
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
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
