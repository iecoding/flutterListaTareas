import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatePage extends StatelessWidget {
  const StatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EmailProvider(),
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _EmailTextField(),
              SizedBox(height: 20),
              _SendButton(),
              SizedBox(height: 20),
              _EmailText(),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmailText extends StatelessWidget {
  const _EmailText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final email = context.watch<EmailProvider>().email;
    return Consumer<EmailProvider>(builder: (_, emailProvider, child) {
      return Text('El email introducido es: ${emailProvider.email}');
    });
  }
}

class _SendButton extends StatelessWidget {
  const _SendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // TODO
      },
      child: const Text('Enviar'),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => context.read<EmailProvider>().email = value,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: 'Email',
      ),
    );
  }
}

class EmailProvider extends ChangeNotifier {
  String _email = '';

  String get email => _email;

  set email(String value) {
    _email = value;
    notifyListeners();
  }
}
