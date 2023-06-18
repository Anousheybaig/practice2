import 'package:flutter/material.dart';
class Mybag_App extends
    StatelessWidget {
  const Mybag_App({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Bag", style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('total 6 item', style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold),),
                ],
              ),

            ),
            Expanded(
              child: ListView.builder(
                itemCount: 8, // Replace with the desired number of list items
                itemBuilder: (BuildContext context, int index) {
                  return Container(


                    child: ListTile(
                      leading: Container(

                        child: Image.asset(
                          'assets/images/16.jpg',
                          width: size.width*0.1,
                          height: size.height*0.93,


                          fit: BoxFit.cover,
                        ),

                      ),

                      title: Text('Nike $index'),
                      subtitle: Text('Price:3500',style: TextStyle(color: Colors.red),),
                      trailing: Icon(Icons.delete),
                    ),
                  );
                },
              ),

            ),
          ],
        ),
      ),
    );
  }


}
