package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;


   public interface ICipher
   {
      jemofe function getBlockSize() : uint;

      jemofe function encrypt(param1:ByteArray) : void;

      jemofe function decrypt(param1:ByteArray) : void;

      jemofe function dispose() : void;

      jemofe function toString() : String;
   }

}