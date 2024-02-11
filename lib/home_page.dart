import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app abr'),
        backgroundColor: Colors.teal,
      ),
      drawer: const Drawer(
        child: Text('dhaka'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w800,
                fontSize: 66,
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.red,
                hintText: 'Enter a amount',
                prefixIcon: Icon(Icons.money_off_csred_sharp),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(85.5)),
                ),
              ),
              keyboardType: TextInputType.number,
            )
          ],
        ),
      ),
    );
  }
}
