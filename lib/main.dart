import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(
    home: Ilabu(),
  ));
}

class Ilabu extends StatefulWidget {
  const Ilabu({super.key});

  @override
  State<Ilabu> createState() => _IlabuState();
}

class _IlabuState extends State<Ilabu> {
  final _t = TextEditingController();
  String r = '', g = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hete'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(r),
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 33, left: 43),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: g),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 33),
                  child: Container(
                    child: TextField(
                      controller: _t,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'hello g'),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      r = _t.text;
                      g = _t.text;
                    });
                  },
                  color: Colors.black,
                  child: const Text(
                    'hello',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
