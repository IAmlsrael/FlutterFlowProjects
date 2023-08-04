import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'hi', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? hiText = '',
    String? esText = '',
  }) =>
      [enText, frText, hiText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // CreateAccountPage
  {
    'wp5pg18n': {
      'en': 'By tapping ‘Sign in’/’Create account’, you agree to our',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'a4sr12hr': {
      'en': ' Terms of Service. ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vhw59k38': {
      'en': 'Learn how we process your data in our ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'g1mu04za': {
      'en': 'Privacy Policy',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6720x9oi': {
      'en': ' and ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9bdb3brj': {
      'en': 'Cookies Policy.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tg3b4642': {
      'en': 'Create account',
      'es': '',
      'fr': '',
      'hi': '',
    },
    't0zbi5zj': {
      'en': 'Sign in',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'q27k6ddx': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // SignInPage
  {
    '6b6yzwi1': {
      'en': 'By tapping ‘Sign in’/’Create account’, you agree to our',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hi9tmcqj': {
      'en': ' Terms of Service. ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dxug6k55': {
      'en': 'Learn how we process your data in our ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ey3y9wnt': {
      'en': 'Privacy Policy',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uettnxbv': {
      'en': ' and ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5n9mqztq': {
      'en': 'Cookies Policy.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '848wk390': {
      'en': 'Sign in with Email',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'yr4lb5ph': {
      'en': 'Sign in with Phone Number',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vrdo5539': {
      'en': 'Back',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'oqz7doar': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // PhoneSignUpPage
  {
    '02jp7xwt': {
      'en': 'What’s your phone number?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '06lm26ug': {
      'en':
          'Medidate will send you a text with a verfication code. Message and data rates may apply',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c2bep6hd': {
      'en': 'What if my number changes?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'pxg1wt46': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // PhoneVerificationPage
  {
    'c6g6zr4k': {
      'en': 'Enter Verification code',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '15bxkods': {
      'en': 'Sent to ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'yzvjp4jy': {
      'en': ' Edit',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c93a05q8': {
      'en': 'Didn’t get a code?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qlntt9u4': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // VerifiedPage
  {
    '9h3zr28q': {
      'en': 'You’re verified. What\'s next?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ynxgbe9q': {
      'en': 'Sign in to Account',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2yd3smdk': {
      'en': 'Complete your profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'rsr7eytc': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp1
  {
    '9xvscc88': {
      'en': 'You’re one of a kind. Your profile should be, too.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fx4quoyf': {
      'en': 'Continue',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jr5boi2h': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp2
  {
    'fjaxs6ve': {
      'en': 'What’s your name?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mr3eadbu': {
      'en': 'First name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kvhtq6et': {
      'en': 'Last name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'y0jp1wf6': {
      'en': 'Last name is optional, and only shared with matches. ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'l54xqtu6': {
      'en': 'Why?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fzc4q2lj': {
      'en': 'Always visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'y7mp6eti': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp4
  {
    'd14jj92z': {
      'en': 'What’s your date of birth?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'yuyn1wi9': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp5
  {
    '4j6clio8': {
      'en': 'The more you share, the better your matches will be',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mxb874ix': {
      'en': 'Continue',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'gip34jnh': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp6_v
  {
    '204bade2': {
      'en': 'Where do you live?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '72tffomp': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp7
  {
    'iuf8btbz': {
      'en': 'Which gender best describes you?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'gqc7xjfk': {
      'en': 'Optional: add more about your gender',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'm4zgz24n': {
      'en': 'Visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'oaqu0fot': {
      'en': 'Learn more about how to use gender to recommend people',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '64i3pn2m': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp8
  {
    'h9mtqoq1': {
      'en': 'What’s your sexuality?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'z3wgzazi': {
      'en': 'Visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'x63d2jjn': {
      'en': 'Feedback on sexuality?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8vgoz8iz': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp7_b
  {
    'bstrpiu5': {
      'en': 'Ex. Trans Woman',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '17ce7wvk': {
      'en': 'Add Info',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3l98ub9m': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp9
  {
    'gxmkboyn': {
      'en': 'Who would you like to date?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '102ivjnu': {
      'en': 'Select who you’re open to meeting',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jnf6dvx5': {
      'en': 'Prefer not to say',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ptm11l06': {
      'en': 'Straight',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tkxntscs': {
      'en': 'Gay',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9pbzqycg': {
      'en': 'Lesbian',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'saa31zgn': {
      'en': 'Feedback on sexuality?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3y3rv2sq': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // demo
  {
    'axgw1b6f': {
      'en': 'Select Location',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'oeluvtxf': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp10
  {
    'sl50qsox': {
      'en': 'How tall are you?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'l1ytslg5': {
      'en': '5\'5\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'eyjk6ee2': {
      'en': '4\'11\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uc00x4p2': {
      'en': '4\'11.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qqvi4f49': {
      'en': '5\'0\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'm81qg9v9': {
      'en': '5\'0.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'frx134sq': {
      'en': '5\'0.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fq3l74ey': {
      'en': '5\'1\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5cn897iq': {
      'en': '5\'1.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uv8josps': {
      'en': '5\'1.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'lfn2pkfr': {
      'en': '5\'2\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'nh078zef': {
      'en': '5\'2.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'r4bleof4': {
      'en': '5\'3\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8t1aai39': {
      'en': '5\'3.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dkyq46yr': {
      'en': '5\'3.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8ajdqdm9': {
      'en': '5\'4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xve48kmk': {
      'en': '5\'4.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6ye06dss': {
      'en': '5\'5\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'koia9tv7': {
      'en': '5\'5.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hxphekva': {
      'en': '5\'5.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '88jq2drn': {
      'en': '5\'6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ixrgl08n': {
      'en': '5\'6.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xbcy3lvw': {
      'en': '5\'7\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xgiamp55': {
      'en': '5\'7.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mvocqvee': {
      'en': '5\'7.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ucribk0k': {
      'en': '5\'8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'doh1urvf': {
      'en': '5\'8.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'viqre7cb': {
      'en': '5\'9\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'm5tiix44': {
      'en': '5\'9.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c5aor8rg': {
      'en': '5\'9.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vlelv3zi': {
      'en': '5\'10\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '029vzetb': {
      'en': '5\'10.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'l6qwrxz6': {
      'en': '5\'11\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'l20svnyd': {
      'en': '5\'11.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fi26swz5': {
      'en': '5\'11.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'rkot7pqz': {
      'en': '6\'0\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9qneynwd': {
      'en': '6\'0.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0a1ed1qc': {
      'en': '6\'0.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dxbm2tlu': {
      'en': '6\'1\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cgnfpjmv': {
      'en': '6\'1.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'srcsh02r': {
      'en': '6\'2\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'a2jnxbu1': {
      'en': '6\'2.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'h7qsfa37': {
      'en': '6\'2.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dy8xefk5': {
      'en': '6\'3\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1m1sy73v': {
      'en': '6\'3.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '94uph0zm': {
      'en': '6\'4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1g5be9u2': {
      'en': '6\'4.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'anrj01f2': {
      'en': '6\'4.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'yaxl7vh6': {
      'en': '6\'5\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dtabfykb': {
      'en': '6\'5.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dh1jko2i': {
      'en': '6\'6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0fmiq11f': {
      'en': '6\'6.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bw2brza8': {
      'en': '6\'6.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0mtaho3j': {
      'en': 'Select how tall you are in feet',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3lfjnkvn': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    's1ktikxa': {
      'en': '165 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'x6v1yu9y': {
      'en': '150 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ooc8oqvi': {
      'en': '151 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'peif0hm3': {
      'en': '152 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4coxo9fw': {
      'en': '153 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jpkexpje': {
      'en': '154 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'djudqiya': {
      'en': '155 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '213rn0iz': {
      'en': '156 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9cikxjv7': {
      'en': '157 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'nvq25pj5': {
      'en': '158 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '60oivicv': {
      'en': '159 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zhev3m9k': {
      'en': '160 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '78ws6evo': {
      'en': '161 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bgh3vjo8': {
      'en': '162 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uzsuho00': {
      'en': '163 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qs2r49m6': {
      'en': '164 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'szmi8nm4': {
      'en': '165 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'p562own7': {
      'en': '166 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '24dmt5kl': {
      'en': '167 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ts1wradp': {
      'en': '168 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'brvppt8s': {
      'en': '169 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8to7xbiq': {
      'en': '170 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3q45btl9': {
      'en': '171 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'n284ujqa': {
      'en': '172 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jxxc47ug': {
      'en': '173 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'rs7ht06f': {
      'en': '174 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '01qkj18o': {
      'en': '175 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jdh9bf33': {
      'en': '176 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bzst2csp': {
      'en': '177 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'emb4pvbo': {
      'en': '178 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jvyx0xp8': {
      'en': '179 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2mst58gr': {
      'en': '180 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'rv3f0u6q': {
      'en': '181 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'o8g6dho4': {
      'en': '182 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qbm4eq2f': {
      'en': '183 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'lbv1opuf': {
      'en': '184 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7yvf5pcc': {
      'en': '185 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'a94pm3w6': {
      'en': '186 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'trghvq5r': {
      'en': '187 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'up1ac1am': {
      'en': '188 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '99oc0w6x': {
      'en': '189 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5segiuvn': {
      'en': '190 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8qewi693': {
      'en': '191 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7i2lbemp': {
      'en': '192 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cj2zw812': {
      'en': '193 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4mu9rjld': {
      'en': '194 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ng1b642w': {
      'en': '195 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kwe19xun': {
      'en': '196 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dzzpex2f': {
      'en': '197 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'i8ie2v9b': {
      'en': '198 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c2jf5r61': {
      'en': '199 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'eqdsfv1k': {
      'en': '200 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tkadcnw2': {
      'en': 'Select how tall you are in centimeter',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'd6r6ts5c': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'p7v7ujzv': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp12
  {
    'jgu2604v': {
      'en': 'What’s your ethnicity',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'p4383zyp': {
      'en': 'Select all who you’re open to meeting',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4sv5egjj': {
      'en': 'Visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'gac7wy4e': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp13
  {
    'p18h76n3': {
      'en': 'What about children?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4alztfyz': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp14
  {
    'y2tvnl56': {
      'en':
          'The more info you provide about yourself, the easier it is to find your person of interest',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'e7wmdsp0': {
      'en': 'Continue',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qd4m84to': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp15
  {
    '1bx5qa3b': {
      'en': 'Where’s your hometown?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '11xqhog8': {
      'en': 'Hometown',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3dx6rbbk': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp16
  {
    'fk9oh3g6': {
      'en': 'Where do you work?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'nx3b809e': {
      'en': 'Workplace',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'm6j74gm5': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp17
  {
    'qmxqcb1o': {
      'en': 'What’s your job title?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cezovo3m': {
      'en': 'Job title',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'gtbv0fpw': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp18
  {
    'gynidp4c': {
      'en': 'Where did you go to school?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fifb339r': {
      'en': 'Add a school',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'iao52liq': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp19
  {
    'kljfu958': {
      'en': 'What’s the highest level you attained?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kf75v35g': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp20
  {
    '8dx6jodq': {
      'en': 'What are your religious beliefs?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'djmcaa5p': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp21
  {
    '4cswvcny': {
      'en': 'What are your political beliefs?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'x4we6v0n': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp22
  {
    'fmu4z61u': {
      'en': 'Do you drink?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kcq4xyte': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp26
  {
    '12xa1fyq': {
      'en':
          'Show off the person behind the profile with pics, videos, and Prompts.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '15vsos5y': {
      'en': 'Continue',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0h6eu82q': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp27
  {
    'xbcj9c15': {
      'en': 'Pick your videos and photos',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xn00wvrt': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // profileSignUp28_a
  {
    'bcj9zenc': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0sxzodha': {
      'en': 'Select a prompt for your photo or video',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7a3vjq3w': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'gckqo3jb': {
      'en': 'Add info',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '00g22s2t': {
      'en': 'Done',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2x04mq6a': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp29_v
  {
    'fmsoizf9': {
      'en': 'Write your profile answers',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1tlz3kxq': {
      'en': 'Select a prompt',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'amendvvy': {
      'en': 'And write your own answer',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qhtl2f62': {
      'en': 'Select a prompt',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kl5aikh9': {
      'en': 'And write your own answer',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2ugdu1ed': {
      'en': 'Select a prompt',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'sgn228vi': {
      'en': 'And write your own answer',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dog5cwh3': {
      'en': '3 answers required',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ch5w7z2t': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // profileSignUp29_b
  {
    'j1u5xree': {
      'en': 'A life goal of mine',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qbmcrtk9': {
      'en': 'This year i really want to',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'p1stxkjk': {
      'en': 'Unusual skills',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'snjizvk5': {
      'en': 'My most irrational fear',
      'es': '',
      'fr': '',
      'hi': '',
    },
    's9s83zan': {
      'en': 'My simple pleasures',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tagxktzh': {
      'en': 'I recently discovered that',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'e3wate5z': {
      'en': 'A random fact I love is',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hle2kayh': {
      'en': 'Dating me is like',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kmeeat14': {
      'en': 'The way to win me over is',
      'es': '',
      'fr': '',
      'hi': '',
    },
    't1qgynov': {
      'en': 'Typical Sunday',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3l1tf404': {
      'en': 'I’m convinced that',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xbet7tpv': {
      'en': 'I go crazy for',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'pc0cgnw6': {
      'en': 'My greatest strength',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'n2m9kwox': {
      'en': 'Prompts',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uziak8jw': {
      'en': 'View all',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'lyrecm8a': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp30_v
  {
    'unrlyf6d': {
      'en': 'Add a Voice Prompt to your profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c91po99g': {
      'en': 'Can we talk about',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'l4pz3t43': {
      'en': '0:00/0:30',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'n8az2ooj': {
      'en': 'Tap to start recording',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ynqytik5': {
      'en': 'Play sample answer',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'v2h25l8l': {
      'en': 'Write answer',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4ip08fdg': {
      'en': 'Done',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3f3xgphd': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp32
  {
    'wxnmn5fx': {
      'en': 'All done!',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ybr90ax3': {
      'en': 'Continue',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zf4rkw9n': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileName
  {
    'qboo6vw1': {
      'en': 'First name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dpwf2fc4': {
      'en': 'Last name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1shooqyu': {
      'en': 'Last name is optional, and only shared with matches. ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jti0ec7b': {
      'en': 'Why?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'f1j3vtye': {
      'en': 'Always visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'r9xevbwu': {
      'en': 'Name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'das5jr9g': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfilePronouns
  {
    'fn3nz4xi': {
      'en': 'Select up to 4',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xtgydw92': {
      'en': 'Visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1m92uklu': {
      'en': 'Learn more about how to use gender to recommend people',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4wrq98hf': {
      'en': 'Pronouns',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '706693dn': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileAge
  {
    '8gnqsqgm': {
      'en': 'Age',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'nzfclsbz': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileLocation
  {
    'drsi83hy': {
      'en': 'Location',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'b316pb80': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileChildren
  {
    '3cog3aux': {
      'en': 'Children',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'q4i6d5b4': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileCovid
  {
    'lkzmtg1y': {
      'en': 'Covid Vaccine',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2vvuzwga': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileWork
  {
    '4olbyshr': {
      'en': 'Work',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'pyfoom7x': {
      'en': 'Work',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'h19e833q': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileJob
  {
    'bltaoy6q': {
      'en': 'Job',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jwl43b3v': {
      'en': 'Job Title',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '28c70moe': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSchool
  {
    '4odmtgat': {
      'en': 'School',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'f94fo3sl': {
      'en': 'School',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4xkrbevx': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileHometown
  {
    'fmie370n': {
      'en': 'Hometown',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'nvlwbr5r': {
      'en': 'Hometown',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'io1ptgsu': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // Settings
  {
    'fu1vtjdx': {
      'en': 'Profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uzs66d1q': {
      'en': 'Pause',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4cilj69o': {
      'en':
          'Pausing prevents your profile from being shown to new people. You can still chat with your current matches',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jkai5s84': {
      'en': 'Sow Last Active Status',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jolip50a': {
      'en':
          'No one can see your last active status, and you cannot see when others were last active',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vx9j1pde': {
      'en': 'Phone & email',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'wcohi83k': {
      'en': 'Notifications',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'odfa2fc6': {
      'en': 'Push Notifications',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jraewhxw': {
      'en': 'Membership',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'v82mjits': {
      'en': 'Upgrade to preferred Membership',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zxp7xwld': {
      'en': 'Language',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '233mtg3a': {
      'en': 'App Language',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c4l1iyh8': {
      'en': 'Legal',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5sxewlk9': {
      'en': 'Privacy Policy',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dlb9710i': {
      'en': 'Terms of Service',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dls1jgfv': {
      'en': 'Privacy preference',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7mrsa7gw': {
      'en': 'Licenses',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'l4whsl9t': {
      'en': 'Safe Dating Tips',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'e8y65bu3': {
      'en': 'Member Principles',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'drzmrjz9': {
      'en': 'Log Out',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2ryok1m7': {
      'en': 'Delete or Pause Account',
      'es': '',
      'fr': '',
      'hi': '',
    },
    't6s17elj': {
      'en': 'Settings',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'gguqhczt': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // PushNotification
  {
    'qml6lkb5': {
      'en': 'Push Notifications',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '73aoc45a': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // DatingPreference
  {
    '1svd8riz': {
      'en': 'Member Preferences',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vs0fw2kx': {
      'en': 'I’m interested in',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'oi2e7mye': {
      'en': 'My neighborhood',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'v9vteuqo': {
      'en': 'Age',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4m543rjp': {
      'en': 'Ethnicity',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xtdvdfix': {
      'en': 'Religion',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7ruo3gl0': {
      'en': 'Subscriber Preferences',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ef1baza1': {
      'en': 'Upgrade',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jzhwo70z': {
      'en': 'Fine tune your preference with a subscription.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'n7f2odwa': {
      'en': 'Height',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uuoxzum0': {
      'en': 'Children',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5gyxso37': {
      'en': 'Family plans',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hebgtjdu': {
      'en': 'Smoking',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fvg84qwj': {
      'en': 'Drinking',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3i9vsivq': {
      'en': 'Political Preference',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kv5euvlb': {
      'en': 'Education',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vx67absw': {
      'en': 'Dating Preferences',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '94ts7x6c': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfilePage
  {
    'o5rx0opl': {
      'en': 'Full Profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vrk1r4gr': {
      'en': 'Dating Peferences',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5uy8bubu': {
      'en': 'Settings',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mjlbcmx3': {
      'en': 'What Works',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0y4nyp4z': {
      'en': 'Help Center',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cx8z3g0o': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // EditViewProfile
  {
    '0c2iey2o': {
      'en': 'View',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6oy1ybbi': {
      'en': 'My photos & Videos',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5l8gw0aa': {
      'en': 'Written Prompt ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ecbti83n': {
      'en': 'A life goal of mine',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vlople7d': {
      'en': 'To be successful',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '381xtsa7': {
      'en': 'A life goal of mine',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jw0zctpn': {
      'en': 'To be successful',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'w1pmxi2n': {
      'en': 'A life goal of mine',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'we358szx': {
      'en': 'To be successful',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'r5r1m796': {
      'en': 'My Vitals',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '034birlx': {
      'en': 'Name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hof4hb7j': {
      'en': 'Always Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9gojbpyx': {
      'en': 'Gender',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'a082ps5i': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2p71hz5n': {
      'en': 'Pronouns',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'y5n5niyx': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'eka2gtoh': {
      'en': 'Sexuality',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'm6xu1vls': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'p3ofboph': {
      'en': 'Age',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'coykvl69': {
      'en': 'Always Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jyyvqiif': {
      'en': 'Height',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '53pfdk7q': {
      'en': 'Always Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ep0kdbi3': {
      'en': 'Location',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'r9njiwg5': {
      'en': 'Always Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '41e4u97l': {
      'en': 'Ethnicity',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '88m0abjd': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'h87pvdl5': {
      'en': 'Children',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'h70um0ht': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9anzma2v': {
      'en': 'Family Plans',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'q5t3ter2': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0uhsr75p': {
      'en': 'Covid Vaccination',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'brlr9mr5': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5ilyk88e': {
      'en': 'My Virtues',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '85iqgpva': {
      'en': 'Work',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'o5bydbvg': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'r00omlal': {
      'en': 'Job Title',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7ceb6kev': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0k6ategg': {
      'en': 'School',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mwgypd2w': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vvdd95tc': {
      'en': 'Education Level',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1u6vnn1m': {
      'en': 'Undergrad',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jjwsct3o': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'nj0rlk5z': {
      'en': 'Religious Beliefs',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'stsk7dom': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'byndfw7f': {
      'en': 'Hometown',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cfjyhttl': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'meprnl3n': {
      'en': 'Political Preference',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'op36to2l': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cbmj3ze1': {
      'en': 'Languages Spoken',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'r4t4nymz': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mfvu7dfa': {
      'en': 'Dating Intentions',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vs63idkq': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mn5rl230': {
      'en': 'Relationship Type',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fu7mxl2y': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8w307rpt': {
      'en': 'My Vices',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '154fbnoc': {
      'en': 'Drinking',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'va29f5f9': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vlvzt0a0': {
      'en': 'Smoking',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tjsn9j1q': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5cbzu8wb': {
      'en': 'Edit',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bfy9w9dc': {
      'en': 'My photos & Videos',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3m7lo5uz': {
      'en': 'Tap to edit',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cjm7vchx': {
      'en': 'Written Prompt ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'a0gwo7n6': {
      'en': 'Tap to edit',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'a5pavhej': {
      'en': 'A life goal of mine',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'lo7ljly1': {
      'en': 'To be successful',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hc76xaiq': {
      'en': 'A life goal of mine',
      'es': '',
      'fr': '',
      'hi': '',
    },
    't4cf7x9e': {
      'en': 'To be successful',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xlx4eq84': {
      'en': 'A life goal of mine',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c6jkvmwx': {
      'en': 'To be successful',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9cy63z2p': {
      'en': 'My Vitals',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '11cbixnn': {
      'en': 'Tap to edit',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'gjnmysar': {
      'en': 'Name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mfbbndeu': {
      'en': 'Always Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '72bij1g9': {
      'en': 'Gender',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1drfhbi9': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7twdiz2h': {
      'en': 'Pronouns',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'h6bdn7to': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ekwuty5f': {
      'en': 'Sexuality',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7hx2g5el': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'x5zt5dnj': {
      'en': 'Age',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ousme51v': {
      'en': 'Always Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bqpv83vu': {
      'en': 'Height',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zurcd6rh': {
      'en': 'Always Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ho4dmfjg': {
      'en': 'Location',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'y9wemyek': {
      'en': 'Always Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'x0sps2sm': {
      'en': 'Ethnicity',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'm77xfjxg': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'wl2offzc': {
      'en': 'Children',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qtx0muw6': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6wodvjo5': {
      'en': 'Family Plans',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2okrkdie': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ycxgeisk': {
      'en': 'Covid Vaccination',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'lt3u1ume': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'y2vcouai': {
      'en': 'My Virtues',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qeng05q7': {
      'en': 'Tap to Edit ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'o873wj99': {
      'en': 'Work',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'z0ncah5s': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    't1ihgog0': {
      'en': 'Job Title',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bwk2roqv': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5bmaw8s5': {
      'en': 'School',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uzqo7f7i': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vo749csv': {
      'en': 'Education Level',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'itphsg3n': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ujg5p21g': {
      'en': 'Religious Beliefs',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kwq6dvt1': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '658l164h': {
      'en': 'Hometown',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'v3w5s6gl': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '23r17c1t': {
      'en': 'Political Preference',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9cx7inhi': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cswkxw78': {
      'en': 'Languages Spoken',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4p8llacv': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'i8au03fp': {
      'en': 'Dating Intentions',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'msbxn9cr': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'omn62zc0': {
      'en': 'Relationship Type',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hfxb06d6': {
      'en': 'Hidden',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'exd8q2jv': {
      'en': 'My Vices',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'igekcyt9': {
      'en': 'Tap to edit',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'yuu2rqdz': {
      'en': 'Drinking',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'x3976p9o': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cett3k60': {
      'en': 'Smoking',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'znj765by': {
      'en': 'Visible',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5f1bmfka': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // EmailSignUpPage
  {
    'em3v52ue': {
      'en': 'What’s your email?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0qgc9ldw': {
      'en': 'Your Email',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qjodqvpj': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSignUp24
  {
    'e7tsyxhu': {
      'en': 'Do you smoke?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '97akqt8g': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // SignUpPage
  {
    'ya23ru0o': {
      'en': 'By tapping ‘Sign in’/’Create account’, you agree to our',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zvkrsg01': {
      'en': ' Terms of Service. ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'd7ipth2a': {
      'en': 'Learn how we process your data in our ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8ifmb1cj': {
      'en': 'Privacy Policy',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'y484eta5': {
      'en': ' and ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'brtqvt2t': {
      'en': 'Cookies Policy.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2b9jagzx': {
      'en': 'Sign Up with Email',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ohuaqwk5': {
      'en': 'Sign up with Phone Number',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'g7bg3gor': {
      'en': 'Back',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hhfbgy2g': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // profileSignUp28_b
  {
    'psly5dxm': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'r11vu8ty': {
      'en': 'Select a prompt for your photo or video',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'naitcw78': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7r6c7ko2': {
      'en': 'Add info',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'v0ee50lz': {
      'en': 'Done',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uvd764bq': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // HomeScreen
  {
    'ion2evpy': {
      'en': 'Start sending likes!',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6iuz7oqk': {
      'en': 'They help us learn your type',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'r7h9e39l': {
      'en': 'Stella',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'oyqhvpx5': {
      'en': 'Verified',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '13wx2ipb': {
      'en': 'My simple pleasures',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4j3uymcj': {
      'en': 'Going out and vibing with others.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'y2dpcfks': {
      'en': '24',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8h4d4bx1': {
      'en': 'Woman',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'izrypxe0': {
      'en': 'Straight',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'shb3akz4': {
      'en': '5\'7',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'nobk00os': {
      'en': 'Web developer at Denver',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '17g4gnam': {
      'en': 'Figuring out my dating goals',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'lpbk8zja': {
      'en': 'I feel most supported when',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hyhrkndx': {
      'en': 'When i am giving out same energy and the same is being returned',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'rw9tztia': {
      'en': 'I want someone who',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hlvp7fbx': {
      'en': 'Is caring, has a lot of vibe and energy, intelligent and mature',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9gbq2ck0': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // SendLikePage
  {
    'm5zrmblr': {
      'en': 'Add a comment',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4k42odpe': {
      'en': 'Send Like',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jripd3x4': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xq3xjood': {
      'en': 'Stella',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5niy71zq': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // LikesPage
  {
    'rg2tw2lm': {
      'en': 'Likes You',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '16xyruzs': {
      'en': 'Boost',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '14f8wb0y': {
      'en': 'You’ve seen everyone',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4l2twj2o': {
      'en':
          'Likes are more intentional on Classy so don’t fret, they’ll come in soon.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bfr0sq2u': {
      'en': 'Try boosting your profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ib3fc0ma': {
      'en': 'Likes You',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bex4nffk': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fh6szl3k': {
      'en': 'Likes your photo',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'k5tuartg': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'erefybxy': {
      'en': 'Likes your photo',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'glnqjdof': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'i2481ja0': {
      'en': 'Likes your photo',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'b0rdp2qf': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qbpcbw5j': {
      'en': 'Likes your photo',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'whtootkm': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xmavqe2e': {
      'en': 'Likes your photo',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vr0kh9of': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'byysdn58': {
      'en': 'Likes your photo',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'pitxy3rt': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // MatchPage
  {
    'g6xseqpv': {
      'en': 'Matches',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jr23f1kg': {
      'en': 'You’re new here! No matches yet',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'gbi66zx6': {
      'en': 'When a Like turns into a connection, you can chat here',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hjv9vgvi': {
      'en': 'Try boosting your profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'p126jhbd': {
      'en': 'Matches',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '49crw47c': {
      'en': 'Search',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'pdzfs10p': {
      'en': 'New matches',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5y9dzu5s': {
      'en': 'You',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9tco91ug': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'b8utthe4': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c4q0vcv3': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vgb949v0': {
      'en': 'Carl',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tgjyws8m': {
      'en': 'Messages',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ac7tzfpj': {
      'en': 'Emilie',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9436lmmi': {
      'en': 'Emilie',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'lhzvsdoo': {
      'en': 'Emilie',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zxsu13m4': {
      'en': 'Hello',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xv3gucy9': {
      'en': '24 min',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3uppa8f0': {
      'en': 'Emilie',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4otdel2d': {
      'en': 'Hello',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5z2puwtz': {
      'en': '24 min',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9jt2eref': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ChatPage
  {
    'nakpdww8': {
      'en': 'Grace',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9jhou3tg': {
      'en': '@Dani',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mro659xn': {
      'en': 'date',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'oijge5z9': {
      'en': 'how are you ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'h2jj6usq': {
      'en': '12:00 PM',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vf8mr9we': {
      'en': 'I am okay',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ixub8lp4': {
      'en': '12:00 PM',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1a0l110i': {
      'en': '12:00 PM',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4h4jinw2': {
      'en': '12:00 PM',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0p6giwo7': {
      'en': 'Your message',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7y0abfob': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // phoneCountryCode
  {
    '2gl0rm4p': {
      'en': 'Select Country',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9r4nsonu': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // passwordSignUpPage
  {
    'z4ww22tv': {
      'en': 'Create a password for your account?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vtmxqji7': {
      'en': 'Your Passsword',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ewno6py1': {
      'en': 'Confirm Passsword',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'gq3a22it': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // EmailSignIPage
  {
    '2v6a2asx': {
      'en': 'Your Email',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'nzzgdp19': {
      'en': 'Your Passwrod',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5p1x35xo': {
      'en': 'Sign In',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '63r8yr21': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // phoneSignInPage
  {
    '61n9set2': {
      'en': 'Sign In',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1dld8al4': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // phoneCountryCode2
  {
    'u2m86inv': {
      'en': 'Select Country',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cbii9wts': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileGender
  {
    'am5v328a': {
      'en': 'Which gender best describes you?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    's61psj8a': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '03voyj36': {
      'en': 'Optional: add more about your gender',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'voym35c6': {
      'en': 'Visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3ls291x9': {
      'en': 'Learn more about how to use gender to recommend people',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7fcj5h60': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileGender_b
  {
    'tiq57360': {
      'en': 'Ex. Trans Woman',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'slr98k5x': {
      'en': 'Add Info',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'n8d5iyxg': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSexuality
  {
    'kzwh52be': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vdoooftp': {
      'en': 'Visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1d3pvg0n': {
      'en': 'Sexuality',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1riok4qs': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileInterestedInDating
  {
    'un3qfhgd': {
      'en': 'Prefer not to say',
      'es': '',
      'fr': '',
      'hi': '',
    },
    's32rtarv': {
      'en': 'Straight',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'wan7d1nz': {
      'en': 'Gay',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '24lrodn1': {
      'en': 'Lesbian',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xfz769zy': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '056gm04p': {
      'en': 'Feedback on sexuality?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1nsvtz6z': {
      'en': 'Interested in dating?',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'frw01px0': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileHeight
  {
    'l1f1f2of': {
      'en': '5\'5\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ueol1gwe': {
      'en': '4\'11\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xlkeaqsa': {
      'en': '4\'11.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'k3qe0fww': {
      'en': '5\'0\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'd8h6srnk': {
      'en': '5\'0.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'k9hd5jsx': {
      'en': '5\'0.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'itgv738p': {
      'en': '5\'1\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'w3vco06n': {
      'en': '5\'1.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '863bn6d7': {
      'en': '5\'1.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uvj0ik0t': {
      'en': '5\'2\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8meq7hhh': {
      'en': '5\'2.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'swgdc08b': {
      'en': '5\'3\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'm68ne6oc': {
      'en': '5\'3.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5bejaxsx': {
      'en': '5\'3.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'yzpfhkw2': {
      'en': '5\'4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '069esjsk': {
      'en': '5\'4.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qeb6re9g': {
      'en': '5\'5\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'l8x4tc6d': {
      'en': '5\'5.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'oyxa09cq': {
      'en': '5\'5.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9r3l16y6': {
      'en': '5\'6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'slutk7uu': {
      'en': '5\'6.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'a1q8ourv': {
      'en': '5\'7\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '04ojm8v1': {
      'en': '5\'7.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cg0fwlts': {
      'en': '5\'7.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xunqgng7': {
      'en': '5\'8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'u0uwtlav': {
      'en': '5\'8.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8b44vxrl': {
      'en': '5\'9\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '64gsd1ba': {
      'en': '5\'9.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c1qhsztz': {
      'en': '5\'9.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hufv74em': {
      'en': '5\'10\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    't054enay': {
      'en': '5\'10.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '24clylip': {
      'en': '5\'11\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dmgjsgma': {
      'en': '5\'11.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'jjdtlhwm': {
      'en': '5\'11.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'enpdnst1': {
      'en': '6\'0\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'k76vlrg2': {
      'en': '6\'0.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0fxzk2a0': {
      'en': '6\'0.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0xv27a6g': {
      'en': '6\'1\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tdiqe608': {
      'en': '6\'1.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'quznou72': {
      'en': '6\'2\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ovhg03zl': {
      'en': '6\'2.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zltyi3ay': {
      'en': '6\'2.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '318i6y92': {
      'en': '6\'3\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bmi10qjk': {
      'en': '6\'3.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7emz23hy': {
      'en': '6\'4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6aclz78e': {
      'en': '6\'4.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ykk4kmd4': {
      'en': '6\'4.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3ud1or56': {
      'en': '6\'5\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'r66wcsx7': {
      'en': '6\'5.6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    't3jt3sae': {
      'en': '6\'6\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    's7sopiw2': {
      'en': '6\'6.4\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'iiynj753': {
      'en': '6\'6.8\"',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ku67mtv9': {
      'en': 'Select how tall you are in feet',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'g6m5mseu': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'rsyirdjo': {
      'en': '165 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3gha96d7': {
      'en': '150 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1zx9qbqd': {
      'en': '151 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ub0w4plc': {
      'en': '152 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'sj7ca1ki': {
      'en': '153 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1hlglsz6': {
      'en': '154 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fhmeq2ij': {
      'en': '155 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1kpquli9': {
      'en': '156 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'n48wdwy3': {
      'en': '157 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '803h245a': {
      'en': '158 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'd48wlu5e': {
      'en': '159 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hrfipk72': {
      'en': '160 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uay9nfek': {
      'en': '161 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'sosjacbz': {
      'en': '162 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'nhlgjx05': {
      'en': '163 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1ypgu5m3': {
      'en': '164 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ugu11s0b': {
      'en': '165 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ak05xjnf': {
      'en': '166 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7pu2vugt': {
      'en': '167 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '032jjrpx': {
      'en': '168 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '0ahce51x': {
      'en': '169 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'twls9l2f': {
      'en': '170 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'vlf5g15q': {
      'en': '171 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2tbz9iyq': {
      'en': '172 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ulatzs7m': {
      'en': '173 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'djumxhwm': {
      'en': '174 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cs3wbjah': {
      'en': '175 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'k45lmqpr': {
      'en': '176 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '9xw9lzrg': {
      'en': '177 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'g12y869y': {
      'en': '178 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    't5en44hl': {
      'en': '179 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uwkz0ff4': {
      'en': '180 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hp7s0agn': {
      'en': '181 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'uy9zo66l': {
      'en': '182 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'u64mcwm4': {
      'en': '183 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'c4oriw7t': {
      'en': '184 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'pj1sb5nb': {
      'en': '185 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tnlmbty0': {
      'en': '186 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xs2r9zr7': {
      'en': '187 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'entewo65': {
      'en': '188 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xh2g23rx': {
      'en': '189 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '7sz86uvs': {
      'en': '190 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zu79notf': {
      'en': '191 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bgmzwkzc': {
      'en': '192 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mikyrnmu': {
      'en': '193 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'coymb22i': {
      'en': '194 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6eotio1e': {
      'en': '195 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '15ujfpb6': {
      'en': '196 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zkkn03i3': {
      'en': '197 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '47anvg9e': {
      'en': '198 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ibu4c9aj': {
      'en': '199 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qs8v9cjn': {
      'en': '200 cm',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zkmhqju4': {
      'en': 'Select how tall you are in centimeter',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'pnixv4zo': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'n8wcvl6y': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'osydjln9': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'dbwihxzh': {
      'en': 'Height',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qmjkclcr': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileEthnicity
  {
    'kh6bii3i': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'sm3ol0kh': {
      'en': 'Visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'aikwm4d8': {
      'en': 'Ethnicity',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '76my9z79': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileFamilyPlan
  {
    '8p7rakvh': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'lxxosl6u': {
      'en': 'Family Plan',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hnovjczn': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileEducation
  {
    'xofe3l61': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ljyipccs': {
      'en': 'Education',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'glito5gw': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileReligion
  {
    'b3j6236f': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zhg1xmwp': {
      'en': 'Religious Belief',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'zdxepn10': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfilePolitics
  {
    '11hzeakj': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'swu5rdmm': {
      'en': 'Political Belief',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mcm2kgez': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileDrinking
  {
    'q4pdsvf4': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '375w93dk': {
      'en': 'Drinking',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tt0u77n0': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfileSmoking
  {
    'nxpler1y': {
      'en': 'Save choice',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fiycm7f7': {
      'en': 'Smoking',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xtee2sjf': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // displayNamePictruePage
  {
    'smz9ax17': {
      'en': 'Display Name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6ti6s72c': {
      'en': 'Save Changes',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6ahtwbkd': {
      'en': 'Profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'po4bqa1b': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // profileSignUp31
  {
    'xc806jjz': {
      'en': 'Display picture and name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kackf9td': {
      'en': 'Display Name',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xq5ntpj9': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // ProfilePageCopy
  {
    'cyaihmyv': {
      'en': 'Amanda',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ly8u5bb1': {
      'en': 'ALU member',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8bphux7u': {
      'en': 'not verified',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2xzj953w': {
      'en': 'Try a fresh photo',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'eq7brgnw': {
      'en': 'Show people your latest and greatest by adding a new photo',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'eff8tc6t': {
      'en': 'Edit profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'rb1awbfw': {
      'en': 'Full Profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '36i6z1jw': {
      'en': 'Dating Peferences',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'sf6o31ns': {
      'en': 'Settings',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ef2sxluq': {
      'en': 'What Works',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'y1we2tf8': {
      'en': 'Help Center',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'cmen7ep4': {
      'en': 'Learn more ',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'rjusbunu': {
      'en': 'Preferred Members go on twice as many dates.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'tfvt3van': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // profilePage2
  {
    'nn1zkpw0': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fc2tk3zw': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'msafcu7h': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6xjnmopf': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kz6h7l72': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'bsvbnfj2': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '233ksgca': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'utggwt0n': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // VerificationNumber
  {
    'a8nqtu1p': {
      'en': '5',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'rmsglocl': {
      'en': '5',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ktrfinmm': {
      'en': '5',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'mvuetm91': {
      'en': '5',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // SIUnitSwitch
  {
    'ozgbgp0g': {
      'en': 'FT',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2jtrdwrm': {
      'en': 'CM',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // eyeChecker
  {
    'c5h1ftbx': {
      'en': 'Always visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // boxChecker
  {
    'zuvfgq36': {
      'en': 'Visible on profile',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // UploadBottomsheet
  {
    '9n50w2f9': {
      'en': 'Upload  a photo or video',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hoi710dr': {
      'en': 'Upload',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // promptAnswerBottomSheet
  {
    '744o2q4s': {
      'en': 'Your answer here',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'e6j2389n': {
      'en': 'Save answer',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
  // Miscellaneous
  {
    'ol2mh699': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '6ut8ono0': {
      'en':
          'In order to record audio, this app rquires the use of your phone microphone.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'p696t4tr': {
      'en':
          'In order to upload media file via this app, permission is required',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'p6m5ie0c': {
      'en':
          'For better efficiency, this app requires your location to be turned on.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'm3bya0as': {
      'en':
          'In order to show notifications from this app, the app requires you give permission.',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'est43b8j': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'hlpxqwc4': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '14jr5nmb': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'iqighwzv': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '1ppde4vb': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'acsqltat': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '3h08bdh8': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'pxun6tan': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ob0l5zv8': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4ou781c6': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'kudk5c2u': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '2xin1no5': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'v5ljting': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '5grh4xmi': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'fyq1tiuq': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qs0oa8cc': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'h3xftpgm': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'ay1330dc': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '8ld1jedy': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'sd9y0vl4': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    '4o7vi1bm': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'qsnv68pf': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
    'xxa623wy': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
