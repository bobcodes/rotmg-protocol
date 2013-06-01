package com.hurlant.crypto.prng
{
[CLASS1710]   import flash.utils.ByteArray;


   public interface IPRNG
   {
      sozylihe function getPoolSize() : uint;

      sozylihe function init(param1:ByteArray) : void;

      sozylihe function next() : uint;

      sozylihe function dispose() : void;

      sozylihe function toString() : String;
   }
[/CLASS]
}