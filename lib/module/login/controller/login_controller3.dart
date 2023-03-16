import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/login/view/login_view3.dart';
import 'package:flutter_slicing_project/state_util.dart';

class LoginController3 extends State<LoginView3> implements MvcController {
  static late LoginController3 instance;
  late LoginView3 view;

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
