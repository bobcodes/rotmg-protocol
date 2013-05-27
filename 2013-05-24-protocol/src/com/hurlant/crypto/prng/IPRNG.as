package com.hurlant.crypto.prng
{
   import flash.utils.ByteArray;


   public interface IPRNG
   {
      zymoda function getPoolSize() : uint;

      zymoda function init(param1:ByteArray) : void;

      zymoda function next() : uint;

      zymoda function dispose() : void;

      zymoda function toString() : String;
   }

}