// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:conecta_cidadao/componentes/inputCadastro.dart';
import 'package:conecta_cidadao/props/cores.dart';
import 'package:conecta_cidadao/telas/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool? aceite = false;

  AceiteTermo() {
    setState(() {
      if (aceite == false) {
        aceite = true;
      } else {
        aceite = false;
      }
    });
  }

  TextEditingController nomeController = TextEditingController();
  TextEditingController sobrenomeController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController fotoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController ruaController = TextEditingController();
  TextEditingController numeroController = TextEditingController();
  TextEditingController whatsappController = TextEditingController();
  TextEditingController bairroController = TextEditingController();
  TextEditingController complementoController = TextEditingController();
  TextEditingController cidadeController = TextEditingController();
  TextEditingController estadoController = TextEditingController();
  TextEditingController cepController = TextEditingController();

  Future<void> cadastrarUsuario() async {
    final url = Uri.parse('http://192.168.1.2:5172/cadastrar');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "nome": nomeController.text,
        "sobrenome": sobrenomeController.text,
        "genero": _opcaoSelecionada,
        "foto": "", // ou implemente depois
        "email": emailController.text,
        "senha": senhaController.text,
        "telefone": telefoneController.text,
        "cpf": cpfController.text,
        "dataNascimento": dataNascimentoController.text,
        "rua": ruaController.text,
        "numero": numeroController.text,
        "whatsapp": whatsappController.text,
        "bairro": bairroController.text,
        "complemento": complementoController.text,
        "cidade": cidadeController.text,
        "estado": estadoController.text,
        "cep": cepController.text,
      }),
    );

    if (response.statusCode == 201) {
      // sucesso
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Usuário cadastrado com sucesso!")),
      );
      Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
    } else {
      final erro = jsonDecode(response.body);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Erro: ${erro['erro']}")),
      );
    }
  }

  String? _opcaoSelecionada;

  List<String> _opcoes = ['Feminino', 'Masculino', 'Prefiro não dizer'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/img/Conecta_Cidadao_logo2.png',
                  scale: MediaQuery.of(context).size.height / 150,
                ),
              ),
              const Text(
                'Para garantir uma experiência segura e personalizada no Conecta Cidadão, solicitamos alguns dados pessoais. Essas informações são essenciais para proteger sua conta e validar sua identidade. Garantimos que seus dados serão tratados com total segurança e confidencialidade, conforme a LGPD.',
                textAlign: TextAlign.center,
                style: TextStyle(color: corCinzaBase2),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              InputTextComp(
                tipo: 'Nome',
                senha: false,
                revelar: false,
                controlador: nomeController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Sobrenome',
                senha: false,
                revelar: false,
                controlador: sobrenomeController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              DropdownButton<String>(
                value: _opcaoSelecionada,
                hint: Text('Selecione seu Gênero'),
                items: _opcoes.map((String valor) {
                  return DropdownMenuItem<String>(
                    value: valor,
                    child: Text(valor),
                  );
                }).toList(),
                onChanged: (String? novoValor) {
                  setState(() {
                    _opcaoSelecionada = novoValor;
                  });
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Data Nascimento',
                senha: false,
                revelar: false,
                controlador: dataNascimentoController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'CPF',
                senha: false,
                revelar: false,
                controlador: cpfController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Rua',
                senha: false,
                revelar: false,
                controlador: ruaController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Número',
                senha: false,
                revelar: false,
                controlador: numeroController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Bairro',
                senha: false,
                revelar: false,
                controlador: bairroController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Complemento',
                senha: false,
                revelar: false,
                controlador: complementoController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Cidade',
                senha: false,
                revelar: false,
                controlador: cidadeController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Estado',
                senha: false,
                revelar: false,
                controlador: estadoController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'CEP',
                senha: false,
                revelar: false,
                controlador: cepController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Email',
                senha: false,
                revelar: false,
                controlador: emailController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Senha',
                senha: true,
                revelar: true,
                controlador: senhaController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InputTextComp(
                tipo: 'Confirmação de Senha',
                senha: true,
                revelar: true,
                controlador: senhaController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                children: [
                  Checkbox(
                      value: aceite,
                      onChanged: (novoCheck) {
                        debugPrint('Click');
                        setState(() {
                          aceite = novoCheck;
                        });
                      },
                      activeColor: corDestaque,
                      side: const BorderSide(color: corCinzaBase)),
                  RichText(
                    text: TextSpan(
                      text: 'Eu aceito os Termos de ',
                      style: const TextStyle(color: corTextoNormal),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Política de Privacidade',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: corPrincipal),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(Uri.parse('https://www.example.com'));
                            },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              FilledButton(
                onPressed: () {
                  if (aceite == true) {
                    cadastrarUsuario();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text("Você precisa aceitar os termos.")),
                    );
                  }
                },
                style: FilledButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width * 2,
                        MediaQuery.of(context).size.height * 0.06),
                    maximumSize: Size(MediaQuery.of(context).size.width * 2,
                        MediaQuery.of(context).size.height * 0.06),
                    backgroundColor: corPrincipal,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    splashFactory: InkSparkle.splashFactory),
                child: const Text('Cadastrar'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text('Voltar'))
            ],
          ),
        ),
      )),
    );
  }
}
