import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '../../auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : CreateAccountPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? NavBarPage()
              : CreateAccountPageWidget(),
        ),
        FFRoute(
          name: 'CreateAccountPage',
          path: '/createAccountPage',
          builder: (context, params) => CreateAccountPageWidget(),
        ),
        FFRoute(
          name: 'SignInPage',
          path: '/signInPage',
          builder: (context, params) => SignInPageWidget(),
        ),
        FFRoute(
          name: 'PhoneSignUpPage',
          path: '/phoneSignUpPage',
          builder: (context, params) => PhoneSignUpPageWidget(
            pagePhoneCode: params.getParam('pagePhoneCode', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'PhoneVerificationPage',
          path: '/phoneVerificationPage',
          builder: (context, params) => PhoneVerificationPageWidget(
            phoneNumber: params.getParam('phoneNumber', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'VerifiedPage',
          path: '/verifiedPage',
          builder: (context, params) => VerifiedPageWidget(),
        ),
        FFRoute(
          name: 'ProfileSignUp1',
          path: '/profileSignUp1',
          builder: (context, params) => ProfileSignUp1Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp2',
          path: '/profileSignUp2',
          builder: (context, params) => ProfileSignUp2Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp4',
          path: '/profileSignUp4',
          builder: (context, params) => ProfileSignUp4Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp5',
          path: '/profileSignUp5',
          builder: (context, params) => ProfileSignUp5Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp6_v',
          path: '/profileSignUp6V',
          builder: (context, params) => ProfileSignUp6VWidget(),
        ),
        FFRoute(
          name: 'ProfileSignUp7',
          path: '/profileSignUp7',
          builder: (context, params) => ProfileSignUp7Widget(
            genderExtraInfo:
                params.getParam('genderExtraInfo', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ProfileSignUp8',
          path: '/profileSignUp8',
          builder: (context, params) => ProfileSignUp8Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp7_b',
          path: '/profileSignUp7B',
          builder: (context, params) => ProfileSignUp7BWidget(),
        ),
        FFRoute(
          name: 'ProfileSignUp9',
          path: '/profileSignUp9',
          builder: (context, params) => ProfileSignUp9Widget(),
        ),
        FFRoute(
          name: 'demo',
          path: '/demo',
          builder: (context, params) => DemoWidget(),
        ),
        FFRoute(
          name: 'ProfileSignUp10',
          path: '/profileSignUp10',
          builder: (context, params) => ProfileSignUp10Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp12',
          path: '/profileSignUp12',
          builder: (context, params) => ProfileSignUp12Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp13',
          path: '/profileSignUp13',
          builder: (context, params) => ProfileSignUp13Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp14',
          path: '/profileSignUp14',
          builder: (context, params) => ProfileSignUp14Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp15',
          path: '/profileSignUp15',
          builder: (context, params) => ProfileSignUp15Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp16',
          path: '/profileSignUp16',
          builder: (context, params) => ProfileSignUp16Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp17',
          path: '/profileSignUp17',
          builder: (context, params) => ProfileSignUp17Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp18',
          path: '/profileSignUp18',
          builder: (context, params) => ProfileSignUp18Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp19',
          path: '/profileSignUp19',
          builder: (context, params) => ProfileSignUp19Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp20',
          path: '/profileSignUp20',
          builder: (context, params) => ProfileSignUp20Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp21',
          path: '/profileSignUp21',
          builder: (context, params) => ProfileSignUp21Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp22',
          path: '/profileSignUp22',
          builder: (context, params) => ProfileSignUp22Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp26',
          path: '/profileSignUp26',
          builder: (context, params) => ProfileSignUp26Widget(),
        ),
        FFRoute(
          name: 'ProfileSignUp27',
          path: '/profileSignUp27',
          builder: (context, params) => ProfileSignUp27Widget(),
        ),
        FFRoute(
          name: 'profileSignUp28_a',
          path: '/profileSignUp28A',
          builder: (context, params) => ProfileSignUp28AWidget(
            mediaLink: params.getParam('mediaLink', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ProfileSignUp29_v',
          path: '/profileSignUp29V',
          builder: (context, params) => ProfileSignUp29VWidget(
            promptQuestion: params.getParam('promptQuestion', ParamType.String),
            promptAnswer: params.getParam('promptAnswer', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'profileSignUp29_b',
          path: '/profileSignUp29B',
          builder: (context, params) => ProfileSignUp29BWidget(),
        ),
        FFRoute(
          name: 'ProfileSignUp30_v',
          path: '/profileSignUp30V',
          builder: (context, params) => ProfileSignUp30VWidget(),
        ),
        FFRoute(
          name: 'ProfileSignUp32',
          path: '/profileSignUp32',
          builder: (context, params) => ProfileSignUp32Widget(),
        ),
        FFRoute(
          name: 'ProfileName',
          path: '/profileName',
          builder: (context, params) => ProfileNameWidget(),
        ),
        FFRoute(
          name: 'ProfilePronouns',
          path: '/profilePronouns',
          builder: (context, params) => ProfilePronounsWidget(),
        ),
        FFRoute(
          name: 'ProfileAge',
          path: '/profileAge',
          builder: (context, params) => ProfileAgeWidget(),
        ),
        FFRoute(
          name: 'ProfileLocation',
          path: '/profileLocation',
          builder: (context, params) => ProfileLocationWidget(),
        ),
        FFRoute(
          name: 'ProfileChildren',
          path: '/profileChildren',
          builder: (context, params) => ProfileChildrenWidget(),
        ),
        FFRoute(
          name: 'ProfileCovid',
          path: '/profileCovid',
          builder: (context, params) => ProfileCovidWidget(),
        ),
        FFRoute(
          name: 'ProfileWork',
          path: '/profileWork',
          builder: (context, params) => ProfileWorkWidget(),
        ),
        FFRoute(
          name: 'ProfileJob',
          path: '/profileJob',
          builder: (context, params) => ProfileJobWidget(),
        ),
        FFRoute(
          name: 'ProfileSchool',
          path: '/profileSchool',
          builder: (context, params) => ProfileSchoolWidget(),
        ),
        FFRoute(
          name: 'ProfileHometown',
          path: '/profileHometown',
          builder: (context, params) => ProfileHometownWidget(),
        ),
        FFRoute(
          name: 'Settings',
          path: '/settings',
          builder: (context, params) => SettingsWidget(),
        ),
        FFRoute(
          name: 'PushNotification',
          path: '/pushNotification',
          builder: (context, params) => PushNotificationWidget(),
        ),
        FFRoute(
          name: 'DatingPreference',
          path: '/datingPreference',
          builder: (context, params) => DatingPreferenceWidget(),
        ),
        FFRoute(
          name: 'ProfilePage',
          path: '/profilePage',
          builder: (context, params) => ProfilePageWidget(),
        ),
        FFRoute(
          name: 'EditViewProfile',
          path: '/editViewProfile',
          builder: (context, params) => EditViewProfileWidget(),
        ),
        FFRoute(
          name: 'EmailSignUpPage',
          path: '/emailSignUpPage',
          builder: (context, params) => EmailSignUpPageWidget(),
        ),
        FFRoute(
          name: 'ProfileSignUp24',
          path: '/profileSignUp24',
          builder: (context, params) => ProfileSignUp24Widget(),
        ),
        FFRoute(
          name: 'SignUpPage',
          path: '/signUpPage',
          builder: (context, params) => SignUpPageWidget(),
        ),
        FFRoute(
          name: 'profileSignUp28_b',
          path: '/profileSignUp28B',
          builder: (context, params) => ProfileSignUp28BWidget(
            videoLiink: params.getParam('videoLiink', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'HomeScreen',
          path: '/homeScreen',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'HomeScreen')
              : HomeScreenWidget(),
        ),
        FFRoute(
          name: 'SendLikePage',
          path: '/sendLikePage',
          builder: (context, params) => SendLikePageWidget(),
        ),
        FFRoute(
          name: 'LikesPage',
          path: '/likesPage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'LikesPage')
              : LikesPageWidget(),
        ),
        FFRoute(
          name: 'MatchPage',
          path: '/matchPage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'MatchPage')
              : MatchPageWidget(),
        ),
        FFRoute(
          name: 'ChatPage',
          path: '/chatPage',
          builder: (context, params) => ChatPageWidget(),
        ),
        FFRoute(
          name: 'phoneCountryCode',
          path: '/phoneCountryCode',
          builder: (context, params) => PhoneCountryCodeWidget(),
        ),
        FFRoute(
          name: 'passwordSignUpPage',
          path: '/passwordSignUpPage',
          builder: (context, params) => PasswordSignUpPageWidget(
            yourEmail: params.getParam('yourEmail', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'EmailSignIPage',
          path: '/emailSignIPage',
          builder: (context, params) => EmailSignIPageWidget(),
        ),
        FFRoute(
          name: 'phoneSignInPage',
          path: '/phoneSignInPage',
          builder: (context, params) => PhoneSignInPageWidget(
            countryPhoneCode:
                params.getParam('countryPhoneCode', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'phoneCountryCode2',
          path: '/phoneCountryCode2',
          builder: (context, params) => PhoneCountryCode2Widget(),
        ),
        FFRoute(
          name: 'ProfileGender',
          path: '/profileGender',
          builder: (context, params) => ProfileGenderWidget(
            genderExtraInfo:
                params.getParam('genderExtraInfo', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ProfileGender_b',
          path: '/profileGenderB',
          builder: (context, params) => ProfileGenderBWidget(),
        ),
        FFRoute(
          name: 'ProfileSexuality',
          path: '/profileSexuality',
          builder: (context, params) => ProfileSexualityWidget(),
        ),
        FFRoute(
          name: 'ProfileInterestedInDating',
          path: '/profileInterestedInDating',
          builder: (context, params) => ProfileInterestedInDatingWidget(),
        ),
        FFRoute(
          name: 'ProfileHeight',
          path: '/profileHeight',
          builder: (context, params) => ProfileHeightWidget(),
        ),
        FFRoute(
          name: 'ProfileEthnicity',
          path: '/profileEthnicity',
          builder: (context, params) => ProfileEthnicityWidget(),
        ),
        FFRoute(
          name: 'ProfileFamilyPlan',
          path: '/profileFamilyPlan',
          builder: (context, params) => ProfileFamilyPlanWidget(),
        ),
        FFRoute(
          name: 'ProfileEducation',
          path: '/profileEducation',
          builder: (context, params) => ProfileEducationWidget(),
        ),
        FFRoute(
          name: 'ProfileReligion',
          path: '/profileReligion',
          builder: (context, params) => ProfileReligionWidget(),
        ),
        FFRoute(
          name: 'ProfilePolitics',
          path: '/profilePolitics',
          builder: (context, params) => ProfilePoliticsWidget(),
        ),
        FFRoute(
          name: 'ProfileDrinking',
          path: '/profileDrinking',
          builder: (context, params) => ProfileDrinkingWidget(),
        ),
        FFRoute(
          name: 'ProfileSmoking',
          path: '/profileSmoking',
          builder: (context, params) => ProfileSmokingWidget(),
        ),
        FFRoute(
          name: 'displayNamePictruePage',
          path: '/displayNamePictruePage',
          builder: (context, params) => DisplayNamePictruePageWidget(),
        ),
        FFRoute(
          name: 'profileSignUp31',
          path: '/profileSignUp31',
          builder: (context, params) => ProfileSignUp31Widget(),
        ),
        FFRoute(
          name: 'ProfilePageCopy',
          path: '/profilePageCopy',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'ProfilePageCopy')
              : ProfilePageCopyWidget(),
        ),
        FFRoute(
          name: 'profilePage2',
          path: '/profilePage2',
          builder: (context, params) => ProfilePage2Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/createAccountPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFF664229),
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
