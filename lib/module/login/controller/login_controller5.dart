import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/login/view/login_view5.dart';
import 'package:flutter_slicing_project/state_util.dart';

class LoginController5 extends State<LoginView5> implements MvcController {
  static late LoginController5 instance;
  late LoginView5 view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
