package com.hurlant.crypto.symmetric
{
[CLASS981]   import flash.utils.ByteArray;


   public interface ICipher
   {
      suti function getBlockSize() : uint;

      suti function encrypt(param1:ByteArray) : void;

      suti function decrypt(param1:ByteArray) : void;

      suti function dispose() : void;

      suti function toString() : String;
   }
[/CLASS]
}