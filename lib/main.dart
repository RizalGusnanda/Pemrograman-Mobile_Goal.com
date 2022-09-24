import 'package:flutter/material.dart';

void main() => runApp(TugasPertemuan3());

class TugasPertemuan3 extends StatelessWidget {
  final text = [
    'Frankie de Jong menjadi idola baru publik Camp Nou',
    'Robert Lewandowski topskor laliga',
  ];

  final gambar = [
    'gambar1.jpg',
    'gambar2.jpeg',
  ];

  final tanggal = [
    'Malang, 24 September 2022',
    'Malang, 24 September 2022',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            "TugasPertemuan3",
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: <Widget>[
            header(),
            Navbar(),
            Expanded(
                child: ListView.builder(
              itemCount: text.length,
              itemBuilder: (context, index) {
                return beritaKecil(index);
              },
            ))
          ],
        ),
      ),
    );
  }

  beritaKecil(int index) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset('/images/' + gambar[index]),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                  child: Text(text[index]),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1, color: Colors.grey),
              ),
            ),
            child: Text(tanggal[index]),
          )
        ],
      ),
    );
  }

  header() {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.purpleAccent)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 280,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage("images/gambar0.jpg"),
              alignment: Alignment.topCenter,
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            alignment: Alignment.center,
            child: const Text(
              "Aubameyang ke Chelsea",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.pink,
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: const Text(
              "Transfer",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}

Navbar() {
  return Container(
    margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text(
          "BERITA TERBARU",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "PERTANDINGAN HARI INI",
          style: TextStyle(fontSize: 16),
        )
      ],
    ),
  );
}
