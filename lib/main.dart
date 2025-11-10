import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
   @override
   Widget build(BuildContext context){
    return MaterialApp(
      title:'Doctor Appointment Booking',
      home: Scaffold(
        appBar:AppBar(title:Text('Doctor Appointment Booking',style:TextStyle(
          fontSize:20,letterSpacing: 12)),
          backgroundColor: const Color.fromARGB(255,240,189,206)  ),
          body:ListView(
            children: [
MyListItem(fruitname: 'Cardiology', imageurl: 'assets/images/cardiologist.jpg', price: 15000),
MyListItem(fruitname: 'Pediatrics', imageurl: 'assets/images/pediatric.jpg', price: 10000),
MyListItem(fruitname: 'Orthopedics', imageurl: 'assets/images/orthopedist.jpg', price: 4000),
MyListItem(fruitname: 'Dentistry', imageurl: 'assets/images/dentist.jpg', price: 5000),
MyListItem(fruitname: 'General Consultation', imageurl: 'assets/images/general.jpg', price: 800)  ],
          )
        )
      );
   }
}
class MyListItem extends StatelessWidget{
  final String fruitname,imageurl;
  final double price;
  MyListItem({super.key,required this.fruitname,required this.imageurl,required this.price});
  final inrFormat=NumberFormat.currency(locale: 'en_IN',symbol: '₹',decimalDigits: 2);
  @override
  Widget build(BuildContext context){
    return Card(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side:BorderSide(color:Colors.grey,width:0.5),
  ),
      elevation:1,
      color:Colors.white,
      child:Row(children: [
        Container(
          padding:EdgeInsets.all(12),
          color:Colors.grey[200],
          width:150,
          height:150,
          child:Image.asset(imageurl,width: 110,height: 100,fit:BoxFit.cover),
),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(fruitname,style:TextStyle(
            fontSize:20,fontWeight:FontWeight.w600
          )
),
          SizedBox(height: 20),
          Text(inrFormat.format(price),style:TextStyle(
            fontSize:18
          )
),
          SizedBox(height:20),
          ElevatedButton(
            onPressed: (){},
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white
            ),
            child:Text('Buy Now')
            )
        ],)
      ],)
    );
  }
}
