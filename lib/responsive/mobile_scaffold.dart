import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/shared/custom_drawer_header.dart';
import 'package:responsive_app/shared/drawer_list_tile.dart';
import 'package:responsive_app/shared/leading_logo.dart';
import 'package:responsive_app/ui/home_body.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,      
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: const Color.fromRGBO(35, 68, 101, 1),
          ),
          margin: const EdgeInsets.only(top: 10,bottom: 10,left: 2,right: 2),          
          height: 60,
        ),
        backgroundColor: const Color.fromRGBO(233, 226, 207, 1),
        automaticallyImplyLeading: false,
        title: const LeadingLogo(),
        centerTitle: false,
        iconTheme:  const IconThemeData(
          color: Colors.white,
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color.fromRGBO(233, 226, 207, 1),
        child: Column(
          children: [
            const CustomDrawerHeader(),
            DrawerListTile(
              icon: Icons.home,
              name: const Text('Home'),
              onPressed: ()=> pageProvider.goTo(0),              
            ),
            DrawerListTile(
              icon: Icons.people,
              name: const Text('About'),
              onPressed: ()=> pageProvider.goTo(1),
            ),
            DrawerListTile(
              icon: Icons.money,
              name: const Text('Pricing'),
              onPressed: ()=> pageProvider.goTo(2),
            ),
            DrawerListTile(
              icon: Icons.mail_outline_outlined,
              name: const Text('Contact'),
              onPressed: ()=> pageProvider.goTo(3),
            ),
            DrawerListTile(
              icon: Icons.location_on,
              name: const Text('Location'),
              onPressed: ()=> pageProvider.goTo(4),
            ),
          ],
        ),

      ),
      body: const HomeBody(),
    );
  }
}
