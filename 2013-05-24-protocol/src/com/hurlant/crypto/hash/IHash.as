package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;


   public interface IHash
   {
      lizugid function getInputSize() : uint;

      lizugid function getHashSize() : uint;

      lizugid function hash(param1:ByteArray) : ByteArray;

      lizugid function toString() : String;

      lizugid function getPadSize() : int;
   }

}