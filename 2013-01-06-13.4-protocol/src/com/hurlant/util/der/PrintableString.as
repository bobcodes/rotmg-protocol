package com.hurlant.util.der
{
[CLASS1871]   import flash.utils.ByteArray;


   public class PrintableString extends Object implements IAsn1Type
   {
      public function PrintableString(param1:uint, param2:uint) {
         super();
         this.type=param1;
         this.len=param2;
         return;
      }

      protected var type:uint;

      protected var len:uint;

      protected var str:String;

      public function getLength() : uint {
         return this.len;
      }

      public function getType() : uint {
         return this.type;
      }

      public function setString(param1:String) : void {
         this.str=param1;
         return;
      }

      public function getString() : String {
         return this.str;
      }

      public function toString() : String {
         return DER.indent+this.str;
      }

      public function toDER() : ByteArray {
         return null;
      }
   }
[/CLASS]
}