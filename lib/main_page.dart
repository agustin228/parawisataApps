import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pariwisata_apps/social_media.dart';
import 'package:pariwisata_apps/entertainment.dart';
import 'package:pariwisata_apps/favorites.dart';
import 'package:pariwisata_apps/featured_place.dart';
import 'package:pariwisata_apps/kuliner.dart';
import 'package:pariwisata_apps/hotel_menu.dart';
import 'package:pariwisata_apps/umkm.dart';
import 'package:pariwisata_apps/wisata.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ClipRRect(
            child: Image.asset(
              "assets/images/logo_bantul.png",
              color: Colors.white,
            ),
          ),
          Center(
            child: Text(
              "Selamat Datang",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text(
                "Kelurahan Gilangharjo",
                style: TextStyle(color: Colors.black, fontFamily: "Open Sans"),
              ),
              accountEmail: Text(
                "Kecamatan Pandak, Kabupaten Bantul",
                style: TextStyle(color: Colors.black, fontFamily: "Open Sans"),
              ),
              decoration: BoxDecoration(color: Colors.transparent),
              currentAccountPicture: ClipRRect(
                child: Image.asset("assets/images/logo_bantul.png"),
              )),
          Divider(),
          ListTile(
            leading: const Icon(MdiIcons.instagram),
            title: const Text("Social Media",
                style: TextStyle(fontFamily: "Open Sans")),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AllPlacesMenu();
              }));
            },
          ),
          ListTile(
            title: const Text(
              "Favorites",
              style: TextStyle(fontFamily: "Open Sans"),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FavoritesMenu();
              }));
            },
            leading: const Icon(Icons.favorite),
          ),
          ListTile(
            title:
                const Text("UMKM", style: TextStyle(fontFamily: "Open Sans")),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UMKM();
              }));
            },
            leading: const Icon(Icons.storefront_outlined),
          ),
          ListTile(
            title: const Text("Featured Places",
                style: TextStyle(fontFamily: "Open Sans")),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FeaturedPlaceMenu();
              }));
            },
            leading: const Icon(Icons.place),
          ),
          ListTile(
            title:
                const Text("Wisata", style: TextStyle(fontFamily: "Open Sans")),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Wisata();
              }));
            },
            leading: const Icon(Icons.beach_access_outlined),
          ),
          ListTile(
            title: const Text("Kuliner",
                style: TextStyle(fontFamily: "Open Sans")),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Kuliner();
              }));
            },
            leading: const Icon(Icons.fastfood_outlined),
          ),
          ListTile(
            title:
                const Text("Hotel", style: TextStyle(fontFamily: "Open Sans")),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HotelMenu();
              }));
            },
            leading: const Icon(Icons.hotel),
          ),
          ListTile(
            title: const Text("Entertainment",
                style: TextStyle(fontFamily: "Open Sans")),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EntertainmentMenu();
              }));
            },
            leading: const Icon(Icons.color_lens),
          )
        ],
      )),
    );
  }
}
