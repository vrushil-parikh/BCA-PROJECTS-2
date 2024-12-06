// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
//
// import 'package:flutter/material.dart';
//
// class MySplashPage extends StatefulWidget {
//
//   @override
//   State<MySplashPage> createState() => _MySplashPageState();
// }
//
// class _MySplashPageState extends State<MySplashPage> {
//
//   @override
//   void initState() {
//     super.initState();
//
//     getLoginState();
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Container(
//         color: Colors.blue,
//         child:const Center(child: Icon(Icons.account_circle_rounded,color: Colors.white,size: 150,),),
//       ),
//     );
//   }
//
//   void getLoginState() async{
//     var sharedPref= await SharedPreferences.getInstance();
//     bool? loginState=sharedPref.getBool('login');
//
//     Timer(const Duration(seconds: 3),(){
//
//       if(loginState!=null && loginState==true){
//         Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
//       }
//       else{
//         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyLoginPage()));
//       }
//     });
//   }
// }
//
// class MyLoginPage extends StatefulWidget {
//   const MyLoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<MyLoginPage> createState() => _MyLoginPageState();
// }
//
// var nameController=TextEditingController();
// var passwordController=TextEditingController();
//
// class _MyLoginPageState extends State<MyLoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: 350,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                     label: const Text('Email Id'),
//                     icon: const Icon(Icons.account_circle_rounded,size: 30,),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       gapPadding: 10,
//                     )
//                 ),
//                 controller: nameController,
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                     label: const Text('Password'),
//                     icon: const Icon(Icons.password,size: 30,),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       gapPadding: 10,
//                     )
//                 ),
//                 controller: passwordController,
//               ),
//               const SizedBox(height: 30),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                     style: ButtonStyle(elevation: MaterialStateProperty.all(10),
//                         shadowColor: MaterialStateProperty.all(Colors.black),
//                         minimumSize: MaterialStateProperty.all(Size.fromHeight(40))
//                     ),
//                     onPressed: ()async{
//                       if(nameController.text.toString()!="" && passwordController.text.toString()!="")
//                       {
//                         var sharedPref=await SharedPreferences.getInstance();
//                         sharedPref.setBool('login', true);
//                         sharedPref.setString('name', nameController.text.toString());
//                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
//                       }
//                     }, child: const Text('Login')),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   var name="";
//   @override
//   void initState() {
//     super.initState();
//     getName();
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 5,
//         title: const Text('Home Page'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//                 otherAccountsPictures: const [
//                   CircleAvatar(backgroundColor: Colors.white,child: Text('S'),),
//                   CircleAvatar(backgroundColor: Colors.white,child: Text('R'),)
//                 ],
//                 accountName: Text(name),
//                 accountEmail: const Text('vrushilparikh123@gmail.com'),
//                 currentAccountPicture: const CircleAvatar(backgroundColor: Colors.white,child: Text(('V')),)),
//             const ListTile(
//               title: Text('Home Page'),
//               trailing: Icon(Icons.home),
//             ),
//             ListTile(
//               title: const Text('Second Page'),
//               trailing: const Icon(Icons.security),
//               onTap: (){
//                 Navigator.of(context).pop();
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage("Second Page")));
//               },
//             ),
//             ListTile(
//               title: const Text('Log out'),
//               trailing: const Icon(Icons.logout_rounded),
//               onTap: ()async{
//                 var sharedPref=await SharedPreferences.getInstance();
//                 sharedPref.setBool('login', false);
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyLoginPage()));
//               },
//             ),
//             ListTile(
//               onTap: (){
//                 Navigator.of(context).pop();
//               },
//               title: Text('Close drawer'),
//               trailing: Icon(Icons.close_fullscreen),
//             )
//           ],
//         ),
//       ),
//       body: Center(child: Text('Hello $name,\nWelcome to Flutter Project',
//         textAlign: TextAlign.center,
//         style: const TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 24,
//             color: Colors.black
//         ),),),
//     );
//   }
//
//   void getName() async{
//     var sharedPref=await SharedPreferences.getInstance();
//     if(sharedPref.getString('name')!=null) {
//       name=sharedPref.getString('name')!;
//       setState(() {
//
//       });
//     }
//   }
// }
//
