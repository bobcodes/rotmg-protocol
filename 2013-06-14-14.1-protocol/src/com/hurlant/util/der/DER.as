package com.hurlant.util.der
{
   import flash.utils.ByteArray;


   public class DER extends Object
   {
      public function DER() {
         super();
         return;
      }

      public static var indent:String = "";



      private static function getLengthOfNextElement(param1:ByteArray) : int {
         var _loc4_:* = 0;
         var _loc2_:uint = param1.position;
         param1.position++;
         var _loc3_:int = param1.readUnsignedByte();
         if(_loc3_>=128)
         {
            _loc4_=_loc3_&127;
            _loc3_=0;
            while(_loc4_>0)
            {
               _loc3_=_loc3_<<8|param1.readUnsignedByte();
               _loc4_--;
            }
         }
         _loc3_=_loc3_+(param1.position-_loc2_);
         param1.position=_loc2_;
         return _loc3_;
      }

      private static function isConstructedType(param1:ByteArray) : Boolean {
         var _loc2_:int = param1[param1.position];
         return !((_loc2_&32)==0);
      }

      public static function wrapDER(param1:int, param2:ByteArray) : ByteArray {
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeByte(param1);
         var _loc4_:int = param2.length;
         if(_loc4_<128)
         {
            _loc3_.writeByte(_loc4_);
         }
         else
         {
            if(_loc4_<256)
            {
               _loc3_.writeByte(1|128);
               _loc3_.writeByte(_loc4_);
            }
            else
            {
               if(_loc4_<65536)
               {
                  _loc3_.writeByte(2|128);
                  _loc3_.writeByte(_loc4_>>8);
                  _loc3_.writeByte(_loc4_);
               }
               else
               {
                  if(_loc4_<65536*256)
                  {
                     _loc3_.writeByte(3|128);
                     _loc3_.writeByte(_loc4_>>16);
                     _loc3_.writeByte(_loc4_>>8);
                     _loc3_.writeByte(_loc4_);
                  }
                  else
                  {
                     _loc3_.writeByte(4|128);
                     _loc3_.writeByte(_loc4_>>24);
                     _loc3_.writeByte(_loc4_>>16);
                     _loc3_.writeByte(_loc4_>>8);
                     _loc3_.writeByte(_loc4_);
                  }
               }
            }
         }
         _loc3_.writeBytes(param2);
         _loc3_.position=0;
         return _loc3_;
      }
   }

}