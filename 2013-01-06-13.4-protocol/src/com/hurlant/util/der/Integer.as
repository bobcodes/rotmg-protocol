package com.hurlant.util.der
{
[CLASS1869]   import com.hurlant.math.Nagequni;
   import flash.utils.ByteArray;


   public class Integer extends Nagequni implements IAsn1Type
   {
      public function Integer(param1:uint, param2:uint, param3:ByteArray) {
         this.type=param1;
         this.len=param2;
         super(param3);
         return;
      }

      private var type:uint;

      private var len:uint;

      public function getLength() : uint {
         return this.len;
      }

      public function getType() : uint {
         return this.type;
      }

      override public function toString(param1:Number=0) : String {
         return DER.indent+"Integer["+this.type+"]["+this.len+"]["+super.toString(16)+"]";
      }

      public function toDER() : ByteArray {
         return null;
      }
   }
[/CLASS]
}