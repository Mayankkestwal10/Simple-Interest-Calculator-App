import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Simple Interest Calculator App",
     home: SIForm(),
     theme: ThemeData(
       primaryColor: Colors.yellow,
       accentColor: Colors.indigoAccent
     ),
    )
  );
}

class SIForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }

}

class _SIFormState extends State<SIForm>{
  var _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final _minimumPadding = 5.0;
  @override
  Widget build(BuildContext context) {
    
    TextStyle textStyle = Theme.of(context).textTheme.title;
    
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Simple Interest Calculator")
        ),
        body: Container(
          margin: EdgeInsets.all(_minimumPadding*2),
          child: ListView(
           //Column(
            children: <Widget>[
             getImageAsset(),           
             TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 labelText: "Principal",
                 hintText: "Enter Principal e.g. 12000",
                 labelStyle: textStyle,
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0)
                 )
               )
             ),
             Padding(padding: EdgeInsets.only(top:_minimumPadding, bottom: _minimumPadding),),
             TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 labelText: "Rate of Interest",
                 labelStyle: textStyle,
                 hintText: "In percent",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0)
                 )
               )
             ),

Padding(
   padding: EdgeInsets.only(top:_minimumPadding, bottom: _minimumPadding),
            child: Row(
              children: <Widget>[
             Expanded(child: TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 labelText: "Term",
                 labelStyle: textStyle,
                 hintText: "Time in years",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0)
                 )
               )
             ) ,),  

             Container(width: _minimumPadding*5,),

      Expanded( 
        child:
             DropdownButton<String>(
               items: _currencies.map((String value){
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                    );
               }).toList(),
               value: 'Rupees',
               onChanged: (String newValueSelected){

               }
             )
             )
              ],
             ),)
            ,
            Padding(
              padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
              child:
              Row(
             children: <Widget>[

               Expanded(
                 child: RaisedButton(
                   child: Text("Calculate"),
                   onPressed: (){

                   },
                 ),

               )


             ],

            )),

            Padding(
              padding: EdgeInsets.all(_minimumPadding*2),
              child: Text("Todo Text"),
            )
            
            ],
         // ),
          )
    )
    );
  }

  Widget getImageAsset(){

     AssetImage assetImage = AssetImage('images/money.png');
     Image image = Image(image: assetImage, width: 135.0, height: 165.0,);
     return Container(
        child : image,
        margin: EdgeInsets.all(_minimumPadding*10),
     );

  }

}