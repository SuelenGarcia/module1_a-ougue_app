import 'package:flutter/material.dart';
import 'package:modulo1_acougue/home_page.dart';
import 'package:modulo1_acougue/theme/custom_theme.dart';
import 'package:modulo1_acougue/widget/login_image_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //valida os campos
  final _formKey = GlobalKey<FormState>();
  // armazena os dados
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submit() {
    //só vai p próxima tela se estiver validado
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginImageWidget(),
              SizedBox(height: 20),
              TextFormField(
                controller: _userController,
                decoration: InputDecoration(
                  labelText: 'Nome de usuário',
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira seu nome de usuário';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira sua senha';
                  }
                  return null;
                },
                obscureText: true,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.primaryColor,
                  minimumSize: Size(size.width * 0.7, size.height * 0.06),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Text('LOGIN', style: CustomTheme.buttonTextStyle()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
