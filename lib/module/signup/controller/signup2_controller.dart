import 'package:flutter/cupertino.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:flutter_slicing_project/module/signup/view/signup2_view.dart';

class Signup2Controller extends State<Signup2View> implements MvcController {
  static late Signup2Controller instance;
  late Signup2View view;

  TextEditingController firstNameController = TextEditingController();
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
