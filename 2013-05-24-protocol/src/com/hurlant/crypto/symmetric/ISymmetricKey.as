package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;


   public interface ISymmetricKey
   {
      dyga function getBlockSize() : uint;

      dyga function encrypt(param1:ByteArray, param2:uint=0) : void;

      dyga function decrypt(param1:ByteArray, param2:uint=0) : void;

      dyga function dispose() : void;

      dyga function toString() : String;
   }

}