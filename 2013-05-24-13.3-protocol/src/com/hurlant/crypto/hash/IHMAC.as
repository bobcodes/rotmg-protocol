package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;


   public interface IHMAC
   {
      nulo function getHashSize() : uint;

      nulo function compute(param1:ByteArray, param2:ByteArray) : ByteArray;

      nulo function dispose() : void;

      nulo function toString() : String;
   }

}