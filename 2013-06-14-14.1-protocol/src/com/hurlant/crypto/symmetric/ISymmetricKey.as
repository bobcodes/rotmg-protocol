package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;


   public interface ISymmetricKey
   {
      nyd function getBlockSize() : uint;

      nyd function encrypt(param1:ByteArray, param2:uint=0) : void;

      nyd function decrypt(param1:ByteArray, param2:uint=0) : void;

      nyd function dispose() : void;

      nyd function toString() : String;
   }

}