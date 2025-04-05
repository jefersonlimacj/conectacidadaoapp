import 'package:conecta_cidadao/componentes/inputCadastro.dart';
import 'package:conecta_cidadao/telas/cadastro.dart';
import 'package:conecta_cidadao/telas/home.dart';
import 'package:conecta_cidadao/telas/recuperarSenha.dart';
import 'package:flutter/material.dart';
import 'package:conecta_cidadao/props/cores.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController senha2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(right: 10),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          color: corPrincipal,
                          Icons.help_outline_rounded,
                        ))),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/img/Conecta_Cidadao_logo1.png',
                    scale: MediaQuery.of(context).size.height * 0.005,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: null),
                  height: MediaQuery.of(context).size.height * 0.30,
                  padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    children: [
                      InputTextComp(
                        tipo: 'Email',
                        senha: false,
                        revelar: false,
                        controlador: emailController,
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      InputTextComp(
                        tipo: 'Senha',
                        senha: true,
                        revelar: true,
                        controlador: senhaController,
                      ),
                      const Spacer(
                        flex: 5,
                      ),
                      FilledButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        style: FilledButton.styleFrom(
                            minimumSize: Size(
                                MediaQuery.of(context).size.width * 2,
                                MediaQuery.of(context).size.height * 0.06),
                            maximumSize: Size(
                                MediaQuery.of(context).size.width * 2,
                                MediaQuery.of(context).size.height * 0.06),
                            backgroundColor: corPrincipal,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            splashFactory: InkSparkle.splashFactory),
                        child: const Text('Entrar'),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RecuperarSenha()));
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: corDestaque),
                          child: const Text('Esqueci minha senha'))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Ainda não tem Cadastro? | ',
                          style: TextStyle(color: corCinzaBase2)),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const Cadastro()));
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: corDestaque),
                          child: const Text('Clique aqui'))
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Color(0xFF055695)),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Desenvolvido por',
                          style: TextStyle(color: Colors.white)),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              foregroundColor: corDestaque),
                          child: const Text('Gerenciar Tech'))
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
