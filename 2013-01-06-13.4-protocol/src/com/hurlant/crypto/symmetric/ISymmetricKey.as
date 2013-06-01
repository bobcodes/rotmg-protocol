package com.hurlant.crypto.symmetric
{
[CLASS1719]   import flash.utils.ByteArray;


   public interface ISymmetricKey
   {
      naqilogin function getBlockSize() : uint;

      naqilogin function encrypt(param1:ByteArray, param2:uint=0) : void;

      naqilogin function decrypt(param1:ByteArray, param2:uint=0) : void;

      naqilogin function dispose() : void;

      naqilogin function toString() : String;
   }
[/CLASS]
}