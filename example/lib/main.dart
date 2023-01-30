
import 'package:encryptiontextfield/src/material/text_field.dart';
import 'package:encryptiontextfield/src/widgets/editable_text.dart';
import 'package:flutter/material.dart';
///
/// 关注微信公众号 大前端Pro 分享更多前端知识
///
///
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[

               const Text("只显示前3位",style: TextStyle(color: Color(0xFF333333), fontSize: 20)),
               EncryptionTextfield(
                maxLines: 1,
                minLines: 1,
                obscureText:false,
                startShow: 3,
                controller: EncryptionTextEditingController(text: "abcdefghijklmn"),
                obscuringCharacter:"*",
                decoration: const InputDecoration(
                    hintText: '',
                    contentPadding: EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none)),
                style: const TextStyle(
                    color: Color(0xFFF55C04), fontSize: 30),
              ),

              const SizedBox(height: 20),

              const Text("只显示后2位",style: TextStyle(color: Color(0xFF333333), fontSize: 20)),
              EncryptionTextfield(
                maxLines: 1,
                minLines: 1,
                obscureText:false,
                endShow: 2,
                controller: EncryptionTextEditingController(text: "abcdefghijklmn"),
                obscuringCharacter:"*",
                decoration: const InputDecoration(
                    hintText: '',
                    contentPadding: EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none)),
                style: TextStyle(
                    color: Color(0xFFF55C04), fontSize: 30),
              ),

              const SizedBox(height: 20),

              const Text("显示前3位和后4位",style: TextStyle(color: Color(0xFF333333), fontSize: 20)),
              EncryptionTextfield(
                maxLines: 1,
                minLines: 1,
                obscureText:false,
                startShow: 3,
                endShow: 4,
                controller: EncryptionTextEditingController(text: "abcdefghijklmn"),
                obscuringCharacter:"*",
                decoration: const InputDecoration(
                    hintText: '',
                    contentPadding: EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none)),
                style: TextStyle(
                    color: Color(0xFFF55C04), fontSize: 30),
              ),

              const SizedBox(height: 20),

              const Text("从第3位开始到第6位隐藏",style: TextStyle(color: Color(0xFF333333), fontSize: 20)),
              EncryptionTextfield(
                maxLines: 1,
                minLines: 1,
                middleHideRange: [3,6],
                controller: EncryptionTextEditingController(text: "abcdefghijklmn"),
                obscuringCharacter:"*",
                decoration: const InputDecoration(
                    hintText: '',
                    contentPadding: EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none)),
                style: const TextStyle(
                    color: Color(0xFFF55C04), fontSize: 30),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
