import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uzum/app/route.dart';
import 'package:uzum/ui/register/cubit/register_cubit.dart';

import '../../cons/cons.dart';
import '../../utils/status.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late final TextEditingController _firstController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confPasswordController;
  late final TextEditingController _phoneController;

  @override
  initState() {
    _firstController = TextEditingController();
    _passwordController = TextEditingController();
    _confPasswordController = TextEditingController();
    _phoneController = TextEditingController();
    super.initState();
  }

  @override
  dispose() {
    _firstController.dispose();
    _passwordController.dispose();
    _confPasswordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  bool isPasswordObscure = true;
  bool isConfirmationObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state.status == Status.success) {
              context.goNamed(RouteHelper.otp, queryParameters: {'id1': _phoneController.text});
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Royxatdan otish ",
                  style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: _phoneController,
                  decoration: InputDecoration(
                    labelText: "Phone",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(Cons.textBorderRadius), borderSide: BorderSide.none),
                    fillColor: const Color(0xFFF3F2F5),
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  controller: _firstController,
                  decoration: InputDecoration(
                    labelText: "First Name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(Cons.textBorderRadius), borderSide: BorderSide.none),
                    fillColor: const Color(0xFFF3F2F5),
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isPasswordObscure,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(Cons.textBorderRadius), borderSide: BorderSide.none),
                    fillColor: const Color(0xFFF3F2F5),
                    filled: true,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordObscure = !isPasswordObscure;
                        });
                      },
                      icon: Icon(isPasswordObscure ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isConfirmationObscure,
                  controller: _confPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(Cons.textBorderRadius), borderSide: BorderSide.none),
                    fillColor: const Color(0xFFF3F2F5),
                    filled: true,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isConfirmationObscure = !isConfirmationObscure;
                        });
                      },
                      icon: Icon(isConfirmationObscure ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xFF6F00FD)),
                  child: Builder(builder: (context) {
                    if (state.status == Status.loading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    return InkWell(
                      onTap: () => onRegisterButtonPressed(context),
                      child: const Center(
                          child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                    );
                  }),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  void onRegisterButtonPressed(BuildContext context) {
    if (_passwordController.text != _confPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Passwords do not match')));
      return;
    }

    if (_phoneController.text.isEmpty || _passwordController.text.isEmpty || _firstController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please fill all fields')));
      return;
    }

    context.read<RegisterCubit>().registerUser(
          phone: _phoneController.text,
          password: _passwordController.text,
          firstName: _firstController.text,
        );
  }
}
