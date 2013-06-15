package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;


   public class NullPad extends Object implements IPad
   {
      public function NullPad() {
         super();
         return;
      }

      public function unpad(param1:ByteArray) : void {
         return;
      }

      public function pad(param1:ByteArray) : void {
         return;
      }

      public function setBlockSize(param1:uint) : void {
         return;
      }
   }

}