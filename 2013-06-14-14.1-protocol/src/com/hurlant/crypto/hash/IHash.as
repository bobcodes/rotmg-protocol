package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;


   public interface IHash
   {
      kymoqen function getInputSize() : uint;

      kymoqen function getHashSize() : uint;

      kymoqen function hash(param1:ByteArray) : ByteArray;

      kymoqen function toString() : String;

      kymoqen function getPadSize() : int;
   }

}