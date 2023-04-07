import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';

import '../../../state_util.dart';
import '../view/dashboard5_view.dart';

class Dashboard5Controller extends State<Dashboard5View>
    implements MvcController {
  static late Dashboard5Controller instance;
  late Dashboard5View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
