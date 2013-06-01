package com.hurlant.crypto.hash
{
[CLASS1706]   import flash.utils.ByteArray;


   public interface IHash
   {
      suku function getInputSize() : uint;

      suku function getHashSize() : uint;

      suku function hash(param1:ByteArray) : ByteArray;

      suku function toString() : String;

      suku function getPadSize() : int;
   }
[/CLASS]
}