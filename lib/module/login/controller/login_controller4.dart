import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/login/view/login_view4.dart';
import 'package:flutter_slicing_project/state_util.dart';

class LoginController4 extends State<LoginView4> implements MvcController {
  static late LoginController4 instance;
  late LoginView4 view;

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
