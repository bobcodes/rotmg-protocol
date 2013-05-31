package com.company.util
{
   import flash.utils.ByteArray;


   public class Rc4HexStringDecoder extends Object
   {
      public function Rc4HexStringDecoder() {
         super();
         return;
      }

      public static function decodeHexStringToRC4(param1:String) : ByteArray {
         var bytes:ByteArray = new ByteArray();
         var counter:* = 0;
         while(counter<param1.length)
         {
            bytes.writeByte(parseInt(param1.substr(counter,2),16));
            counter=counter+2;
         }
         return bytes;
      }

      public static function hum(param1:String, param2:String) : Number {
         return param1.localeCompare(param2);
      }
   }

}