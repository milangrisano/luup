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
        title: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: LeadingLogo(),
        ),
        actions:  [
          ExtendAppBarButton(
            text: '¿Que Hacemos?',
            onPressed: () => pageProvider.goTo(0),
          ),
          ExtendAppBarButton(
            text: '¿Como lo Hacemos?',
            onPressed: () => pageProvider.goTo(1),
          ),
          ExtendAppBarButton(
            text: '¿Quienes Somos?',
            onPressed: () => pageProvider.goTo(2),
          ),
          ExtendAppBarButton(
            text: 'Blog',
            onPressed: () => pageProvider.goTo(3),
          ),
          ExtendAppBarButton(
            text: 'Contacto',
            onPressed: () => pageProvider.goTo(4),
          ),
          Row(
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(116, 147, 178, 1),
                  shape: BoxShape.circle, // Define la forma como círculo
                ),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(221, 116, 25, 1),
                  shape: BoxShape.circle, // Define la forma como círculo
                ),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(233, 226, 207, 1),
                  shape: BoxShape.circle, // Define la forma como círculo
                ),
              ),
            ],
          ),
          const SizedBox(width: 15),
          ExtendAppBarButton(
            text: 'LUUPERS',
            onPressed: () => pageProvider.goTo(4),
            backgroundcolor: const Color.fromRGBO(221, 116, 25, 1),
          ),
          const SizedBox(width: 20),
        ],
        // elevation: 10,
      ),
      body: const HomeBody(),
    );
  }
}



