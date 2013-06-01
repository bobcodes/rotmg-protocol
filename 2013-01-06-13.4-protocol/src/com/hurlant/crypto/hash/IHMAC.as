package com.hurlant.crypto.hash
{
[CLASS1704]   import flash.utils.ByteArray;


   public interface IHMAC
   {
      kocif function getHashSize() : uint;

      kocif function compute(param1:ByteArray, param2:ByteArray) : ByteArray;

      kocif function dispose() : void;

      kocif function toString() : String;
   }
[/CLASS]
}