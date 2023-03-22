import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/login/view/login_view2.dart';
import 'package:flutter_slicing_project/state_util.dart';

class LoginController2 extends State<LoginView2> implements MvcController {
  static late LoginController2 instance;
  late LoginView2 view;

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
