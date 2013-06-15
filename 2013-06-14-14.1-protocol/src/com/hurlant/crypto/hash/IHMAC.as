package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;


   public interface IHMAC
   {
      jypyr function getHashSize() : uint;

      jypyr function compute(param1:ByteArray, param2:ByteArray) : ByteArray;

      jypyr function dispose() : void;

      jypyr function toString() : String;
   }

}