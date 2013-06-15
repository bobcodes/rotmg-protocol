package com.hurlant.crypto.prng
{
   import flash.utils.ByteArray;


   public interface IPRNG
   {
      ditof function getPoolSize() : uint;

      ditof function init(param1:ByteArray) : void;

      ditof function next() : uint;

      ditof function dispose() : void;

      ditof function toString() : String;
   }

}