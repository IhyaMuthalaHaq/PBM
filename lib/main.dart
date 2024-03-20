import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Menu Rumah Makan Barokah'),
          centerTitle: true,
        ),
        body: MenuList(),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildMenuItem('Lodho Ayam Kampung', 'Harga Rp 25.000', 'Deskripsi: makanan dari daging ayam, yang berasal dari Tulungagung dan Trenggalek. Makanan ini umumnya dihidangkan sebagai sajian tradisi selamatan. ',
            'assets/images/lodho.jpeg'),
        buildMenuItem('Rawon', 'Harga Rp 15.000', 'Deskripsi: masakan khas Indonesia yang berasal dari Ponorogo yang berupa sup daging berkuah hitam dengan campuran bumbu khas yang menggunakan kluwek yang sebenarnya mengandung racun jenis Sianida, Makanan ini telah berusia lebih dari 1.000 tahun.',
            'assets/images/rawon.jpeg'),
        buildMenuItem('Soto Daging', 'Harga Rp 15.000', 'Deskripsi: salah satu olahan daging sapi yang sederhana dan praktis ini pun enak dinikmati bersama dengan nasi hangat. Olahan daging sapi ini memiliki citarasa yang gurih dengan perpaduan rasa manis dan juga pedas.',
            'assets/images/soto daging.jpeg'),
        buildMenuItem('Tongseng Daging','Harga Rp 35.000','Deskripsi: sejenis hidangan gulai daging berkuah dengan bumbu yang lebih kuat. Tongseng pada umumnya menggunakan daging kambing,[1] meskipun ada pula tongseng daging sapi, daging domba,[2] atau daging kerbau.',
            'assets/images/tongseng daging.jpeg'),
        // Add more menu items as needed
      ],
    );
  }

  Widget buildMenuItem(
      String name, String price, String description, String imagePath) {
    return Container(
      padding: EdgeInsets.all(30.0),
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(25.0), // Adjust border radius
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(price),
                Text(description),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.blue),
                    Icon(Icons.star, color: Colors.blue),
                    Icon(Icons.star, color: Colors.blue),
                    Icon(Icons.star, color: Colors.blue),
                    Icon(Icons.star, color: Colors.blue),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
