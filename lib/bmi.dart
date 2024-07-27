import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  TextEditingController usd =TextEditingController();
  TextEditingController inr =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversion"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.all(30),
        child: TextField(
          controller: usd,
          onChanged: (val){
            inr.text=(int.parse(val)*83).toString();
          },
          keyboardType: TextInputType.number,
        decoration: InputDecoration(
          label: Text('USD'),
          hintText: '0',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )
        ),
        )
        ),
        Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              controller: inr,
              onChanged: (val){
                usd.text=(int.parse(val)/83).toString();
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Text('INR'),
                  hintText: '00',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            )
        ),
        MaterialButton(
            onPressed: (){
              usd.text='';
              inr.text='';
            },
            child: Text('Reset'),
          color: Colors.red,
        )
      ],
    ),
    ),

    );
  }
}
