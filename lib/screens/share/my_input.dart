import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {

  MyInput(
      {Key? key,
        this.validate,
        required this.myController,
      required this.hintText,
      this.isPassword = false,
      this.isEmail = false,
      this.seePassword = true,
      this.write = true,this.isOnChange=false,})
      : super(key: key);

  String hintText;
  bool isPassword;
  bool isEmail;
  bool seePassword;
  TextEditingController myController;
  bool write;
  bool isOnChange;
  final validate;


  @override
  State<MyInput> createState() => _MyInputState();

}

class _MyInputState extends State<MyInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
    },
      validator: widget.validate,
      keyboardType: widget.isEmail?TextInputType.emailAddress:TextInputType.text,
      readOnly:widget.write?false:true ,
      controller: widget.myController ,
      style: const TextStyle(color: Colors.black),
      obscureText: widget.isPassword && widget.seePassword ? true : false,
      decoration: InputDecoration(
         // fillColor: Colors.grey.shade100,
          //filled: true,
          labelText:widget.hintText ,
         // hintText: ,
         //  border: OutlineInputBorder(
         //    borderRadius: BorderRadius.circular(10.r),
         //  ),
         //  focusedBorder: OutlineInputBorder(
         //    borderRadius: BorderRadius.circular(10.r),
         //    borderSide: const BorderSide(
         //      color: Colors.black,
         //    ),
         //  ),
          suffixIcon: widget.isPassword
              ? widget.seePassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          widget.seePassword = !widget.seePassword;
                        });
                      },
                      icon: const Icon(Icons.visibility_outlined))
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          widget.seePassword = !widget.seePassword;
                        });
                      },
                      icon: const Icon(Icons.visibility_off_outlined))
              : widget.isEmail?const Icon(Icons.email_outlined):null),
    );
  }
}
