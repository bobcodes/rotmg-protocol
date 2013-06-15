package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;


   public interface ICipher
   {
      rihanor function getBlockSize() : uint;

      rihanor function encrypt(param1:ByteArray) : void;

      rihanor function decrypt(param1:ByteArray) : void;

      rihanor function dispose() : void;

      rihanor function toString() : String;
   }

}