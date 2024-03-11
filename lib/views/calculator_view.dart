

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {

  late final AppLifecycleListener _listener;

 int x = 0;
 int y = 0;
 num z = 0;//num take value for the float and int , so we take num datatype 

 final displyaOneController = TextEditingController();
 final displaySecondController = TextEditingController();

 @override
  void initState() {
   displyaOneController.text = x.toString();
   displaySecondController.text = y.toString();
   
   super.initState();

   _listener = AppLifecycleListener(
    
    onShow: _onShow,
    onHide: _onHide,
    onResume: _onResume,
    onDetach: _onDetach,
    onInactive:  _onInactive,
    onPause: _onPause,
    onRestart: _onRestart,
    onStateChange: _onStateChange,
   


   );}

        void _onShow(){
         
          print("on show");
       }
       void _onHide(){
        print("on hide");
       }
       void _onResume(){
        print("on resume");
       }
       void _onDetach(){
        print("on detach");
       }
       void _onPause(){
        print("on pause");
       }
       void _onRestart(){

        print("on restart");
       }
     void _onInactive(){
      print("on inactive");
     }
     void _onStateChange(AppLifecycleState state){

      print("on stat change ::$state");

     }

   
  @override
  void dispose() {
   displyaOneController.dispose();
   displaySecondController.dispose();
   _listener.dispose();
   super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return  Padding(

      padding: const EdgeInsets.all(35.0),
      child: Column(
      
        children: [
           CalculatorDisplay(
            key: const Key("displayOne"),
            hintText : "Enter a first number",controller : displyaOneController),
          const SizedBox(height: 20,),
           CalculatorDisplay(
            key: const Key("displayTwo"),
            hintText : "Enter a second number ",controller : displaySecondController),
          const SizedBox(height: 20,),


          Text(
            key: const Key("Result"),
            z.toString(),style: const TextStyle(fontSize:30 ,fontWeight:FontWeight.bold),),

          const Spacer(),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
          FloatingActionButton(onPressed: (){

            setState(() {
                z = num.parse(displyaOneController.text)+ num.parse(displaySecondController.text);
            });
          
        
          },child: const Icon(CupertinoIcons.add)),
          FloatingActionButton(onPressed:(){

            setState(() {
               z = num.parse(displyaOneController.text)- num.parse(displaySecondController.text);
            });
           
          },child: const Icon(CupertinoIcons.minus)),
          FloatingActionButton(onPressed:(){

            setState(() {
              z = num.parse(displyaOneController.text)* num.parse(displaySecondController.text);

            });
           
          },child: const Icon(CupertinoIcons.multiply)),
          FloatingActionButton(onPressed:(){
            setState(() {
              
               z = num.parse(displyaOneController.text)/ num.parse(displaySecondController.text);
            });
           
          },child: const Icon(CupertinoIcons.divide)),
          ]
,),
   
   const SizedBox(height: 20,),
     
  FloatingActionButton.extended(onPressed:(){
            setState(() {
              
              x =0;
              y =0;
              z =0;
              displyaOneController.clear();
              displaySecondController.clear();
              
            });
           
          }, label: const Center(child: Text("clear"))),
          

          

        

        ],
      ),

    
    );
  }


}

// ignore: camel_case_types
class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({
    super.key,this.hintText = "Enter a number",required this.controller,
  });

  final String ? hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(

    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white)
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: Colors.white)
      
      ),
          
            
  hintText:  hintText,
  
            
          
             ),);
  }
}