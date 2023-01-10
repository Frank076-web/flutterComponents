import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  String? vaildator(String? value) {
    if (value == null) return "Este campo es requerido";
    return value.length < 3 ? "Minimo de 3 caractéres" : null;
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey();

    final Map<String, String> formValues = {
      'firs_name': 'Franco',
      'last_name': 'Inzerillo',
      'email': 'francoeinzerillo@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y Forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: "Nombre",
                  hintText: "Nombre del usuario",
                  validatorFunction: vaildator,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Apellido",
                  hintText: "Apellido del usuario",
                  validatorFunction: vaildator,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Email",
                  hintText: "Email del usuario",
                  keyboardType: TextInputType.emailAddress,
                  validatorFunction: vaildator,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Contraseña",
                  keyboardType: TextInputType.visiblePassword,
                  validatorFunction: vaildator,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'SuperUser',
                      child: Text('SuperUser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'JuniorDeveloper',
                      child: Text('JuniorDeveloper'),
                    ),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text("Guardar", textAlign: TextAlign.center),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
