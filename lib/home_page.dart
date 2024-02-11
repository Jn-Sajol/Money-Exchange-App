import 'package:flutter/material.dart';

// class Home extends StatefulWidget{
//   const Home({super.key});
//   @override
//   State<Home> createState()=> _Home();
// }
//
// class _Home extends State<Home>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//
//     )
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var textEditingController = TextEditingController();
  double result = 0;
   void calculation(){
     result =double.parse(textEditingController.text) * 100;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
     // print(result);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Money Exchange App'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      drawer: const Drawer(
        child: Text('dhaka'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              result.toString(),
              style:const TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w800,
                fontSize: 66,
              ),
            ),
             TextField(
              controller:textEditingController,
              style: const TextStyle(
               color: Colors.black,
              ),
              decoration:const  InputDecoration(
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
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: calculation,
                style: const ButtonStyle(
                    // textStyle: MaterialStatePropertyAll(TextStyle(
                    //   color: Colors.red,
                    //   // fontSize: 54,
                    // )),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.lightBlueAccent),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.fromLTRB(4, 3, 3, 3)),
                    fixedSize: MaterialStatePropertyAll(Size(500, 50),
                    ),
                ),
                child:const Text('Explore',style:TextStyle(color: Colors.deepOrange),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
