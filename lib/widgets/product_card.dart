import 'package:flutter/material.dart';
import 'package:karesu_mobile/screens/productentry_form.dart';
import 'package:karesu_mobile/screens/list_productentry.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:karesu_mobile/screens/login.dart';

class ItemHomepage {
     final String name;
     final IconData icon;

     ItemHomepage(this.name, this.icon);
 }


class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  // Helper method untuk menentukan warna berdasarkan nama item
  Color _getButtonColor(String name) {
    switch (name) {
      case "See Car Listing":
        return const Color(0xFFf05225);  // Orange
      case "Add Product":
        return const Color(0xFFff8d21);  // Light Orange
      case "Logout":
        return const Color(0xFFffa652);  // Orange
      default:
        return Colors.blue;  // Default color
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: _getButtonColor(item.name),
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () async {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("You pressed the ${item.name} button!"))
            );

          // Navigate ke route yang sesuai
          if (item.name == "Add Product") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
            );
          }
          else if (item.name == "See Car Listing") {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const ProductEntryPage()
                ),
            );
          }
          else if (item.name == "Logout") {
              final response = await request.logout(
                  // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                  "http://127.0.0.1:8000/auth/logout/");
              String message = response["message"];
              if (context.mounted) {
                  if (response['status']) {
                      String uname = response["username"];
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("$message Sampai jumpa, $uname."),
                      ));
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                  } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(message),
                          ),
                      );
                  }
              }
          }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
