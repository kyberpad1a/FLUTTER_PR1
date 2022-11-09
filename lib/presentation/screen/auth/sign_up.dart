import 'package:prak2/app_router.dart';
import 'package:prak2/data/repositories/auth_repositories_impl.dart';
import 'package:prak2/domain/entity/role_entity.dart';
import 'package:prak2/domain/usecase/auth.dart';
import 'package:prak2/presentation/widgets/custom_button.dart';
import 'package:prak2/presentation/widgets/text_field_obscure.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}




class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> _key = GlobalKey();

  TextEditingController _surnameController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _patronymicController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isObscure = false;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                const Text(
                  'Регистрация',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26),
                ),
                const Spacer(),
                TextFormField(
                  maxLength: 20,
                  controller: _surnameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле "Фамилия" пустое';
                    }
                    if (value.length < 2) {
                      return 'Фамилия не может быть меньше двух символов';
                    }
                    if(!isValidInitials(value))
                    {
                      return 'Фамилия должна быть кириллической';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Фамилия',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 20,
                  controller: _nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле "Имя" пустое';
                    }
                    if (value.length < 2) {
                      return 'Имя не может быть меньше двух символов';
                    }
                    if(!isValidInitials(value))
                    {
                      return 'Имя должно быть кириллическим';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Имя',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 20,
                  controller: _patronymicController,
                  validator: (value) {
                    if (value!.isNotEmpty && !isValidInitials(value)) {
                        return 'Отчество должно быть кириллическим';
                    }
                    if (value.isNotEmpty && value.length<5){
                      return 'Длина отчества должна превышать 5 символов';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Отчество',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 30,
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле электронной почты пустое';
                    }
                    if(!isValidEmail(value))
                    {
                      return 'Некорректный ввод электронной почты';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 20,
                  controller: _loginController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле "Логин" пустое';
                    }
                    if (value.length < 8) {
                      return 'Логин должен быть не менее 8 символов';
                    }
                    if(isValidLogin(value))
                    {
                      return 'Логин не должен быть кириллическим';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Логин',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 16,
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле "Пароль" пустое';
                    }
                    if (value.length < 8) {
                      return 'Пароль должен быть от 8 до 16 символов';
                    }
                    if(isValidPassword(value))
                    {
                      return 'Пароль должен содержать как минимум одну строчную и прописную букву, и как минимум одну цифру';
                    } 
                    return null;
                  },
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    hintText: 'Пароль',
                    suffixIcon: TextFieldObscure(isObscure: (value) {
                      setState(() {
                        isObscure = value;
                      });
                    }),
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  content: 'Регистрация',
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      signUp();
                    } else {}
                  },
                ),
                const Spacer(flex: 3),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp() async {
    final AuthRepositoriesImpl auth = AuthRepositoriesImpl();

    var result = await Auth(auth).signUp(RegParams(
        surname: _surnameController.text,
        name: _nameController.text,
        patronymic: _patronymicController.text,
        email: _emailController.text,
        login: _loginController.text,
        password: _passwordController.text));

    result.fold((l) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l),
        ),
      );
    }, (r) {
      Navigator.pop(context);
    });
  }
  
  bool isValidPassword(String value) {
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])$';
        RegExp regExp = new RegExp(pattern);
        return regExp.hasMatch(value);
  }
  bool isValidEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
     RegExp regExp = new RegExp(pattern);
        return regExp.hasMatch(value);
  }
  bool isValidInitials(String value){
        String  pattern = r'[А-ЯЁ][-А-яЁё]+';
        RegExp regExp = new RegExp(pattern);
        return regExp.hasMatch(value);
  }
    bool isValidLogin(String value){
        String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])$';
        RegExp regExp = new RegExp(pattern);
        return regExp.hasMatch(value);
  }
  
}