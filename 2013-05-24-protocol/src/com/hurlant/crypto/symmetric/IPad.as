package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;


   public interface IPad
   {
      fypukit function pad(param1:ByteArray) : void;

      fypukit function unpad(param1:ByteArray) : void;

      fypukit function setBlockSize(param1:uint) : void;
   }

}