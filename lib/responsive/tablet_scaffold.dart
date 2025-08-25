import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/responsive/avatar_button.dart';
import 'package:responsive_app/shared/extend_appbar_icon.dart';
import 'package:responsive_app/shared/leading_logo.dart';
import 'package:responsive_app/ui/home_body.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
         toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: const Color.fromRGBO(35, 68, 101, 1),
          ),
          margin: const EdgeInsets.all(10),          
          height: 60,
        ),
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        //actionsPadding: const EdgeInsets.all(5),
        backgroundColor: const Color.fromRGBO(233, 226, 207, 1),
        automaticallyImplyLeading: false,
        title: const LeadingLogo(),
        actions:  [
          ExtendAppBarIcon(text: 'Home', onPressed: () =>pageProvider.goTo(0), icon: Icons.home,),
          ExtendAppBarIcon(text: 'About', onPressed: () => pageProvider.goTo(1), icon: Icons.people,),
          ExtendAppBarIcon(text: 'Pricing', onPressed: () => pageProvider.goTo(2), icon: Icons.attach_money_sharp,),
          ExtendAppBarIcon(text: 'Contact', onPressed: () => pageProvider.goTo(3), icon: Icons.mail_outline,),
          ExtendAppBarIcon(text: 'Location', onPressed: () => pageProvider.goTo(4), icon: Icons.location_on,),
          const CircularButtonAvatar(),
          const SizedBox(width: 20),          
        ],
        // elevation: 10,
      ),
      body: const HomeBody(),
    );
  }
}