import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/login/view/login_view.dart';
import 'package:flutter_slicing_project/state_util.dart';

class LoginController extends State<LoginView>
    with ChangeNotifier
    implements MvcController {
  static late LoginController instance;
  late LoginView view;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
