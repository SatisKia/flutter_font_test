import 'package:flutter/material.dart';

class MyContainer extends Container {
  MyContainer( {Key? key, required double width, required double height, alignment, child}) : super(
      key: key,
      width: width,
      height: height,
      alignment: alignment,
      decoration: BoxDecoration(
          border: Border.all( color: const Color( 0xff0000ff) )
      ),
      child: child
  );
}

class MyText extends Container {
  MyText( String text, {Key? key, required double fontSize, required FontWeight fontWeight} ) : super(
      key: key,
      decoration: BoxDecoration(
        border: Border.all(color: const Color( 0xffff0000) ),
      ),
      child: Text(
          text,
          textScaleFactor: 1.0, // これを指定すると、端末のフォントサイズ指定に影響を受けなくなる。
          style: TextStyle(
            height: 1.0, // これを指定すると、上下の余白がカットされる。指定しないと日本語と英語とで高さが異なる場合もある。
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: const Color( 0xff000000 ),
          )
      )
  );
}

class Test1Row extends Row {
  Test1Row( width, fontWeignt, String type, {Key? key} ) : super(key: key,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        MyText( "abcde", fontSize: width / 15, fontWeight: fontWeignt ),
        MyText( "あいうえお", fontSize: width / 15, fontWeight: fontWeignt ),
        MyText( "abcあいう", fontSize: width / 15, fontWeight: fontWeignt ),
        Text( type ),
      ] );
}
class Test1 extends Column {
  Test1( width, {Key? key} ) : super(key: key,
      children: [
        Test1Row( width, FontWeight.normal, "normal" ),
        Test1Row( width, FontWeight.bold, "bold" ),
        Test1Row( width, FontWeight.w100, "w100" ),
        Test1Row( width, FontWeight.w200, "w200" ),
        Test1Row( width, FontWeight.w300, "w300" ),
        Test1Row( width, FontWeight.w400, "w400" ),
        Test1Row( width, FontWeight.w500, "w500" ),
        Test1Row( width, FontWeight.w600, "w600" ),
        Test1Row( width, FontWeight.w700, "w700" ),
        Test1Row( width, FontWeight.w800, "w800" ),
        Test1Row( width, FontWeight.w900, "w900" ),
      ]
  );
}

class Test2 extends Column {
  Test2( text, width, {Key? key} ) : super(key: key,
      children: [
        Row( children: [
          MyContainer( width: width / 3, height: width / 3, alignment: Alignment.topLeft, child: MyText( text, fontSize: width / 12, fontWeight: FontWeight.normal ) ),
          MyContainer( width: width / 3, height: width / 3, alignment: Alignment.topCenter, child: MyText( text, fontSize: width / 12, fontWeight: FontWeight.normal ) ),
          MyContainer( width: width / 3, height: width / 3, alignment: Alignment.topRight, child: MyText( text, fontSize: width / 12, fontWeight: FontWeight.normal ) ),
        ] ),
        Row( children: [
          MyContainer( width: width / 3, height: width / 3, alignment: Alignment.centerLeft, child: MyText( text, fontSize: width / 12, fontWeight: FontWeight.normal ) ),
          MyContainer( width: width / 3, height: width / 3, alignment: Alignment.center, child: MyText( text, fontSize: width / 12, fontWeight: FontWeight.normal ) ),
          MyContainer( width: width / 3, height: width / 3, alignment: Alignment.centerRight, child: MyText( text, fontSize: width / 12, fontWeight: FontWeight.normal ) ),
        ] ),
        Row( children: [
          MyContainer( width: width / 3, height: width / 3, alignment: Alignment.bottomLeft, child: MyText( text, fontSize: width / 12, fontWeight: FontWeight.normal ) ),
          MyContainer( width: width / 3, height: width / 3, alignment: Alignment.bottomCenter, child: MyText( text, fontSize: width / 12, fontWeight: FontWeight.normal ) ),
          MyContainer( width: width / 3, height: width / 3, alignment: Alignment.bottomRight, child: MyText( text, fontSize: width / 12, fontWeight: FontWeight.normal ) ),
        ] )
      ]
  );
}
