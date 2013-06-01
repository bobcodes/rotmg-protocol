package com.hurlant.crypto.symmetric
{
[CLASS1722]   import flash.utils.ByteArray;


   public interface IPad
   {
      jytyfiki function pad(param1:ByteArray) : void;

      jytyfiki function unpad(param1:ByteArray) : void;

      jytyfiki function setBlockSize(param1:uint) : void;
   }
[/CLASS]
}