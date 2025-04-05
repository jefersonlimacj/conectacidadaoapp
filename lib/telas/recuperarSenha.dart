import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class RecuperarSenha extends StatelessWidget {
  const RecuperarSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.help_outline_rounded),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/img/Img-Rec-senha.png',
                        scale: 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/img/Conecta_Cidadao_logo2.png',
                            scale: 5,
                          )
                        ],
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        child: Text(
                          "Você está prestes a recuperar sua senha. Por favor, certifique-se de ter acesso ao e-mail cadastrado para seguir as instruções enviadas e completar o processo.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: corCinzaBase2),
                        ),
                      )
                    ],
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width * 2,
                          MediaQuery.of(context).size.height * 0.06),
                      maximumSize: Size(MediaQuery.of(context).size.width * 2,
                          MediaQuery.of(context).size.height * 0.06),
                      backgroundColor: corPrincipal,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      splashFactory: InkSparkle.splashFactory),
                  child: const Text('Continuar'),
                ),
                TextButton(onPressed: () {}, child: const Text('Voltar'))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
