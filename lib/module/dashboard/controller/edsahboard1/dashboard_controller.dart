import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/dashboard/model/product.dart';
import 'package:flutter_slicing_project/module/dashboard/service/dashboard_service.dart';
import 'package:flutter_slicing_project/state_util.dart';
import '../../view/edashboard1/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    with TickerProviderStateMixin
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    getProducts();
  }

  final PageController pageController = PageController();
  late TabController tabController;

  List<Product> _products = [];
  List<Product> get products => _products;

  Future<List<Product>> getProducts() async {
    return _products = await DashboardService.getProducts();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
