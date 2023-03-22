import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/login/view/login_view.dart';
import 'package:flutter_slicing_project/state_util.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

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
