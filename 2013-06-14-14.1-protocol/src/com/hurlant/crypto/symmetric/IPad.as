package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;


   public interface IPad
   {
      denisiqo function pad(param1:ByteArray) : void;

      denisiqo function unpad(param1:ByteArray) : void;

      denisiqo function setBlockSize(param1:uint) : void;
   }

}