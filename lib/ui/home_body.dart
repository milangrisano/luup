import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/ui/view/How_We_Do_It.dart';
import 'package:responsive_app/ui/view/blog.dart';
import 'package:responsive_app/ui/view/what_we_do.dart';
import 'package:responsive_app/ui/view/location.dart';
import 'package:responsive_app/ui/view/who_we_are.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrollControler,
      scrollDirection: Axis.vertical,
      children: const [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}