import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

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
          appStateNotifier.loggedIn ? const HubLoginWidget() : const WelcomeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const HubLoginWidget() : const WelcomeWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) => const HomeWidget(),
        ),
        FFRoute(
          name: 'signup',
          path: '/signup',
          builder: (context, params) => const SignupWidget(),
        ),
        FFRoute(
          name: 'valida_email',
          path: '/validaEmail',
          builder: (context, params) => const ValidaEmailWidget(),
        ),
        FFRoute(
          name: 'legal_uso',
          path: '/legalUso',
          builder: (context, params) => const LegalUsoWidget(),
        ),
        FFRoute(
          name: 'legal_investigacion',
          path: '/legalInvestigacion',
          builder: (context, params) => const LegalInvestigacionWidget(),
        ),
        FFRoute(
          name: 'signUpEnfermedad',
          path: '/signUpEnfermedad',
          builder: (context, params) => SignUpEnfermedadWidget(
            editando: params.getParam(
              'editando',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'signUpEmpresa',
          path: '/signUpEmpresa',
          builder: (context, params) => const SignUpEmpresaWidget(),
        ),
        FFRoute(
          name: 'signUp_detalle_enfermedad',
          path: '/signUpDetalleEnfermedad',
          builder: (context, params) => const SignUpDetalleEnfermedadWidget(),
        ),
        FFRoute(
          name: 'Home_empresa',
          path: '/homeEmpresa',
          builder: (context, params) => const HomeEmpresaWidget(),
        ),
        FFRoute(
          name: 'empresa_pdte_validacion',
          path: '/empresaPdteValidacion',
          builder: (context, params) => const EmpresaPdteValidacionWidget(),
        ),
        FFRoute(
          name: 'welcome',
          path: '/welcome',
          builder: (context, params) => const WelcomeWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'recordar_pass',
          path: '/recordarPass',
          builder: (context, params) => const RecordarPassWidget(),
        ),
        FFRoute(
          name: 'diario1',
          path: '/diario1',
          builder: (context, params) => const Diario1Widget(),
        ),
        FFRoute(
          name: 'menu_diario',
          path: '/menuDiario',
          builder: (context, params) => const MenuDiarioWidget(),
        ),
        FFRoute(
          name: 'diario2',
          path: '/diario2',
          builder: (context, params) => const Diario2Widget(),
        ),
        FFRoute(
          name: 'diario4',
          path: '/diario3',
          builder: (context, params) => const Diario4Widget(),
        ),
        FFRoute(
          name: 'diario3',
          path: '/diario4',
          builder: (context, params) => const Diario3Widget(),
        ),
        FFRoute(
          name: 'diario5',
          path: '/diario5',
          builder: (context, params) => const Diario5Widget(),
        ),
        FFRoute(
          name: 'diario6',
          path: '/diario6',
          builder: (context, params) => const Diario6Widget(),
        ),
        FFRoute(
          name: 'diario7',
          path: '/diario7',
          builder: (context, params) => const Diario7Widget(),
        ),
        FFRoute(
          name: 'diario8',
          path: '/diario8',
          builder: (context, params) => const Diario8Widget(),
        ),
        FFRoute(
          name: 'diario9',
          path: '/diario9',
          builder: (context, params) => const Diario9Widget(),
        ),
        FFRoute(
          name: 'diarioFin',
          path: '/diarioFin',
          builder: (context, params) => const DiarioFinWidget(),
        ),
        FFRoute(
          name: 'hubLogin',
          path: '/hubLogin',
          builder: (context, params) => const HubLoginWidget(),
        ),
        FFRoute(
          name: 'setup',
          path: '/setup',
          builder: (context, params) => SetupWidget(
            enfermedadId: params.getParam(
              'enfermedadId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'diario_sueno1',
          path: '/diarioSueno1',
          builder: (context, params) => const DiarioSueno1Widget(),
        ),
        FFRoute(
          name: 'diario_sueno2',
          path: '/diario_sueno2',
          builder: (context, params) => const DiarioSueno2Widget(),
        ),
        FFRoute(
          name: 'diario_suenoFin',
          path: '/diario_suenoFin',
          builder: (context, params) => const DiarioSuenoFinWidget(),
        ),
        FFRoute(
          name: 'diario_sueno3',
          path: '/diario_sueno3',
          builder: (context, params) => const DiarioSueno3Widget(),
        ),
        FFRoute(
          name: 'setupInto',
          path: '/setupInto',
          builder: (context, params) => const SetupIntoWidget(),
        ),
        FFRoute(
          name: 'diario_Into1',
          path: '/diario_Into1',
          builder: (context, params) => DiarioInto1Widget(
            primerIdario: params.getParam(
              'primerIdario',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'menu_intolerancias',
          path: '/menuIntolerancias',
          builder: (context, params) => const MenuIntoleranciasWidget(),
        ),
        FFRoute(
          name: 'diario_Into2',
          path: '/diario_Into2',
          builder: (context, params) => const DiarioInto2Widget(),
        ),
        FFRoute(
          name: 'diarioIntoFin',
          path: '/diarioIntoFin',
          builder: (context, params) => const DiarioIntoFinWidget(),
        ),
        FFRoute(
          name: 'diario_Into3',
          path: '/diario_Into3',
          builder: (context, params) => const DiarioInto3Widget(),
        ),
        FFRoute(
          name: 'diario_Into4',
          path: '/diario_Into4',
          builder: (context, params) => const DiarioInto4Widget(),
        ),
        FFRoute(
          name: 'listado',
          path: '/listado',
          builder: (context, params) => const ListadoWidget(),
        ),
        FFRoute(
          name: 'resumen',
          path: '/resumen',
          builder: (context, params) => ResumenWidget(
            diarioId: params.getParam(
              'diarioId',
              ParamType.int,
            ),
            fechaTxt: params.getParam(
              'fechaTxt',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'reporteSalud',
          path: '/reporteSalud',
          builder: (context, params) => const ReporteSaludWidget(),
        ),
        FFRoute(
          name: 'reporteIntolerancias',
          path: '/reporteIntolerancias',
          builder: (context, params) => const ReporteIntoleranciasWidget(),
        ),
        FFRoute(
          name: 'noticias',
          path: '/noticias',
          builder: (context, params) => const NoticiasWidget(),
        ),
        FFRoute(
          name: 'noticiasDetalle',
          path: '/noticiasDetalle',
          builder: (context, params) => NoticiasDetalleWidget(
            noticiasId: params.getParam(
              'noticiasId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'invitarAmigo',
          path: '/invitarAmigo',
          builder: (context, params) => const InvitarAmigoWidget(),
        ),
        FFRoute(
          name: 'encuestas',
          path: '/encuestas',
          builder: (context, params) => const EncuestasWidget(),
        ),
        FFRoute(
          name: 'encuestasFin',
          path: '/encuestasFin',
          builder: (context, params) => EncuestasFinWidget(
            encuestaId: params.getParam(
              'encuestaId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'marketplace',
          path: '/marketplace',
          builder: (context, params) => const MarketplaceWidget(),
        ),
        FFRoute(
          name: 'marketplaceProductos',
          path: '/marketplaceProductos',
          builder: (context, params) => MarketplaceProductosWidget(
            categoriaId: params.getParam(
              'categoriaId',
              ParamType.int,
            ),
            nombreCat: params.getParam(
              'nombreCat',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'detalleProducto',
          path: '/detalleProducto',
          builder: (context, params) => DetalleProductoWidget(
            productoId: params.getParam(
              'productoId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'comunidad',
          path: '/comunidad',
          builder: (context, params) => const ComunidadWidget(),
        ),
        FFRoute(
          name: 'comunidad_crea_post',
          path: '/comunidadCreaPost',
          builder: (context, params) => ComunidadCreaPostWidget(
            postId: params.getParam(
              'postId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'comunidad_comentarios',
          path: '/comunidadComentarios',
          builder: (context, params) => ComunidadComentariosWidget(
            postId: params.getParam(
              'postId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'chat_conversaciones',
          path: '/chatConversaciones',
          builder: (context, params) => const ChatConversacionesWidget(),
        ),
        FFRoute(
          name: 'chat_mensajes',
          path: '/chatMensajes',
          builder: (context, params) => ChatMensajesWidget(
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
            conversacionId: params.getParam(
              'conversacionId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'perfil',
          path: '/perfil',
          builder: (context, params) => const PerfilWidget(),
        ),
        FFRoute(
          name: 'perfil_foto',
          path: '/perfilFoto',
          builder: (context, params) => const PerfilFotoWidget(),
        ),
        FFRoute(
          name: 'perfil_idiomas',
          path: '/perfilIdiomas',
          builder: (context, params) => const PerfilIdiomasWidget(),
        ),
        FFRoute(
          name: 'perfil_faqs',
          path: '/perfilFaqs',
          builder: (context, params) => const PerfilFaqsWidget(),
        ),
        FFRoute(
          name: 'perfil_contacto',
          path: '/perfilContacto',
          builder: (context, params) => const PerfilContactoWidget(),
        ),
        FFRoute(
          name: 'perfil_notificaciones',
          path: '/perfilNotificaciones',
          builder: (context, params) => const PerfilNotificacionesWidget(),
        ),
        FFRoute(
          name: 'perfil_medicamentos',
          path: '/perfilMedicamentos',
          builder: (context, params) => const PerfilMedicamentosWidget(),
        ),
        FFRoute(
          name: 'perfil_datos_personales',
          path: '/perfilDatosPersonales',
          builder: (context, params) => const PerfilDatosPersonalesWidget(),
        ),
        FFRoute(
          name: 'perfil_datos_medicos',
          path: '/perfilDatosMedicos',
          builder: (context, params) => const PerfilDatosMedicosWidget(),
        ),
        FFRoute(
          name: 'perfil_asociaciones',
          path: '/perfilAsociaciones',
          builder: (context, params) => const PerfilAsociacionesWidget(),
        ),
        FFRoute(
          name: 'emp_encuestas',
          path: '/empEncuestas',
          builder: (context, params) => const EmpEncuestasWidget(),
        ),
        FFRoute(
          name: 'emp_detalle_encuesta',
          path: '/empDetalleEncuesta',
          builder: (context, params) => EmpDetalleEncuestaWidget(
            encuestaId: params.getParam(
              'encuestaId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'emp_detalle_preguntas',
          path: '/empDetallePreguntas',
          builder: (context, params) => EmpDetallePreguntasWidget(
            encuestaId: params.getParam(
              'encuestaId',
              ParamType.int,
            ),
            tituloEs: params.getParam(
              'tituloEs',
              ParamType.String,
            ),
            tituloEn: params.getParam(
              'tituloEn',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'emp_crea_encuesta1',
          path: '/empCreaEncuesta1',
          builder: (context, params) => const EmpCreaEncuesta1Widget(),
        ),
        FFRoute(
          name: 'emp_crea_encuesta2',
          path: '/empCreaEncuesta2',
          builder: (context, params) => const EmpCreaEncuesta2Widget(),
        ),
        FFRoute(
          name: 'emp_crea_encuesta3',
          path: '/empCreaEncuesta3',
          builder: (context, params) => const EmpCreaEncuesta3Widget(),
        ),
        FFRoute(
          name: 'emp_crea_edita_pregunta',
          path: '/empCreaEditaPregunta',
          builder: (context, params) => const EmpCreaEditaPreguntaWidget(),
        ),
        FFRoute(
          name: 'encuestasDetalleCopy',
          path: '/encuestasDetalleCopy',
          builder: (context, params) => EncuestasDetalleCopyWidget(
            encuestaId: params.getParam(
              'encuestaId',
              ParamType.int,
            ),
            titulo: params.getParam(
              'titulo',
              ParamType.String,
            ),
            cantPreguntas: params.getParam(
              'cantPreguntas',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'noticiasCrea',
          path: '/noticiasCrea',
          builder: (context, params) => NoticiasCreaWidget(
            noticiaId: params.getParam(
              'noticiaId',
              ParamType.int,
            ),
            edita: params.getParam(
              'edita',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
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
    ..addAll(uri.queryParameters)
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
      (state.allParams.length == 1 &&
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
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
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
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
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
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/welcome';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/splash.png',
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.contain,
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
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
