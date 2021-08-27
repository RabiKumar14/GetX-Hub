// import 'package:code_hub/export.dart';
// import 'package:code_hub/firebaseAuthWithGetX/signupFirebase.dart';
// import 'package:code_hub/home.dart';

// var todoApp = HomeItem(
//     title: 'Todo App',
//     subtitle: 'Firebase Authentication with GetX',
//     action: () {
//       Get.to(Login());
//     });

// class Login extends StatelessWidget {
//   const Login({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController emailController = TextEditingController();
//     final TextEditingController passwordController = TextEditingController();
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(hintText: 'Email'),
//                 controller: emailController,
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(hintText: 'Password'),
//                 controller: passwordController,
//                 obscureText: true,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Log In'),
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     Get.to(SignUp());
//                   },
//                   child: Text('Sign Up'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
