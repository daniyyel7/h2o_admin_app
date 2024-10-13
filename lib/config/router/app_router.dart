import 'package:go_router/go_router.dart';
import 'package:h2o_admin_app/presentation/screens/screens.dart';


final appRouter = GoRouter(
  initialLocation: "/login",
  routes: [

    GoRoute(
      path: "/login",
      name: "login_screen",
      builder: (context, state) => const LoginScreen(), 
      ),
    GoRoute(
      path: '/register',
      name: 'register_screen',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/resetpassword',
      name: 'resetpassword_screen',
      builder: (context, state) => const ResetPasswordScreen(),
    ),
    GoRoute(
      path: '/confirmationemail',
      name: 'confirmationemail_screen',
      builder: (context, state) => const ConfirmationEmailPassword(),
    ),
    GoRoute(
      path: '/listOrders',
      name: 'list_orders_screen',
      builder: (context, state) => const ListOrdersScreen(),
    ),

  ]
);