import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h2o_admin_app/presentation/widgets/textFormField/text_form_field_custom.dart';

class LoginScreen extends StatefulWidget {
  static const String name = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //decoration para el degradado...
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromRGBO(8, 165, 192, 80),
                Color.fromRGBO(60, 204, 220, 80)
              ]),
        ),
        child: Stack(
          //alignment: Alignment.center,
          children: [
            Column(
              children: [
                const SizedBox(height: 100, width: 1000),
                Image.asset(
                  // height: 150,
                  // width: 150,
                  'assets/img/logoh2o.png',
                ),
                const Text(
                  'Linda Vista',
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                ),
                const Text(
                  'AGUA PURIFICADA',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  constraints: const BoxConstraints.tightFor(
                      height: 540, width: double.infinity),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(height: 40),
                      const Text('Iniciar sesión',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff08A5C0))),
                      const SizedBox(
                        // Dar el espacio
                        height: 40,
                      ),
                      const TextFormFieldCustom(
                        labelText: 'Usuario',
                        icon: Icons.person,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextFormFieldCustom(
                        labelText: 'Contraseña',
                        icon: Icons.remove_red_eye,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 7),
                          Checkbox(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                            visualDensity: VisualDensity.standard,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(
                                color: _isChecked
                                    ? const Color(0xff08A5C0)
                                    : Colors.grey,
                                width: 2,
                              ),
                            ),
                            fillColor: WidgetStateProperty.all(_isChecked
                                ? const Color(0xff08A5C0)
                                : Colors.transparent),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 0.01),
                            child: const Text('Recordar'),
                          )
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.only(right: 25),
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            style: const ButtonStyle(),
                            onPressed: () {
                              context.goNamed('resetpassword_screen');
                            },
                            child: const Text(
                              '¿Has olvidado tu contraseña?',
                              style: TextStyle(
                                color: Color(0xff08A5C0),
                              ),
                            ),
                          )),
                      const SizedBox(
                          height:
                              18), //Espacio entre "Recordar y ButtonIngresar"
                      //Boton de "Ingresar"
                      SizedBox(
                        height: 50,
                        width: 250,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                              backgroundColor: const Color(0xff08A5C0)),
                          onPressed: () {
                             context.goNamed('list_orders_screen');
                          },
                          child: const Text(
                            'Ingresar',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('¿No tienes cuenta?'),
                          TextButton(
                            onPressed: () {
                              context.goNamed('register_screen');
                            },
                            child: const Text(
                                style: TextStyle(color: Color(0xff08A5C0)),
                                'Registrate'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
