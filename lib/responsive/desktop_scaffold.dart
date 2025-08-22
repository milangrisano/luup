import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/shared/extend_appbar_button.dart';
import 'package:responsive_app/shared/leading_logo.dart';
import 'package:responsive_app/ui/home_body.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return  Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color.fromRGBO(35, 68, 101, 1),
          ),
          margin: const EdgeInsets.all(10),          
          height: 60,
        ),
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        //actionsPadding: const EdgeInsets.all(5),
        backgroundColor: const Color.fromRGBO(233, 226, 207, 1),
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: LeadingLogo(),
        ),
        actions:  [
          ExtendAppBarButton(
            text: 'Home',
            onPressed: () => pageProvider.goTo(0),
          ),
          ExtendAppBarButton(
            text: 'About',
            onPressed: () => pageProvider.goTo(1),
          ),
          ExtendAppBarButton(
            text: 'Pricing',
            onPressed: () => pageProvider.goTo(2),
          ),
          ExtendAppBarButton(
            text: 'Contact',
            onPressed: () => pageProvider.goTo(3),
          ),
          ExtendAppBarButton(
            text: 'Location',
            onPressed: () => pageProvider.goTo(4),
          ),
          const SizedBox(width: 20),          
        ],
        // elevation: 10,
      ),
      body: const HomeBody(),
    );
  }
}



