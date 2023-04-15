import 'package:flutter/material.dart';
import '../../view/edashboard2/dashboard2_view.dart';
import '/state_util.dart';

class Dashboard2Controller extends State<Dashboard2View>
    implements MvcController {
  static late Dashboard2Controller instance;
  late Dashboard2View view;
  final PageController pageController = PageController(
    initialPage: 2,
    viewportFraction: 0.8,
  );

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
